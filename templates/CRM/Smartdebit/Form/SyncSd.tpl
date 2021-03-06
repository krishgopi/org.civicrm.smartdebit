{*--------------------------------------------------------------------+
| CiviCRM version 4.7                                                |
+--------------------------------------------------------------------+
| Copyright CiviCRM LLC (c) 2004-2017                                |
+--------------------------------------------------------------------+
| This file is a part of CiviCRM.                                    |
|                                                                    |
| CiviCRM is free software; you can copy, modify, and distribute it  |
| under the terms of the GNU Affero General Public License           |
| Version 3, 19 November 2007 and the CiviCRM Licensing Exception.   |
|                                                                    |
| CiviCRM is distributed in the hope that it will be useful, but     |
| WITHOUT ANY WARRANTY; without even the implied warranty of         |
| MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.               |
| See the GNU Affero General Public License for more details.        |
|                                                                    |
| You should have received a copy of the GNU Affero General Public   |
| License and the CiviCRM Licensing Exception along                  |
| with this program; if not, contact CiviCRM LLC                     |
| at info[AT]civicrm[DOT]org. If you have questions about the        |
| GNU Affero General Public License or the licensing of CiviCRM,     |
| see the CiviCRM license FAQ at http://civicrm.org/licensing        |
+-------------------------------------------------------------------*}

<h3>{ts}Select the AUDDIS and ARUDD dates that you wish to process now:{/ts}</h3>
<div class="crm-block crm-form-block crm-export-form-block">
    <div class="description">
        <p>{ts}Showing available dates from <strong>{$dateOfCollectionStart}</strong> to <strong>{$dateOfCollectionEnd}</strong>{/ts}</p>
    </div>
    <div class="help">
      <span><i class="crm-i fa-info-circle" aria-hidden="true"></i> {ts}Terms:{/ts}</span>
        <ul>
            <li>AUDDIS: Automated Direct Debit Instruction Service (payment reports)</li>
            <li>ARUDD: Automated Return of Unpaid Direct Debit (failure reports)</li>
        </ul>
    </div>
    <div class="crm-block crm-form-block crm-campaignmonitor-sync-form-block">
        <div class="crm-submit-buttons">
            {include file="CRM/common/formButtons.tpl"}
        </div>
    </div>
   {if ($groupCount > 0)}
        <div id="id-additional" class="form-item">
        <div class="crm-accordion-wrapper ">
         <div class="crm-accordion-header">
         {ts}Include Auddis Date(s){/ts}
         </div><!-- /.crm-accordion-header -->
         <div class="crm-accordion-body">
          {strip}

          <table>
          {if $groupCount > 0}
            <tr class="crm-mailing-group-form-block-includeGroups"><td class="label">{$form.includeAuddisDate.label}</td></tr>
            <tr class="crm-mailing-group-form-block-includeGroups"><td>{$form.includeAuddisDate.html}</td></tr>
          {/if}

          </table>

          {/strip}
         </div><!-- /.crm-accordion-body -->
        </div><!-- /.crm-accordion-wrapper -->
    {else}
      <h3>{ts}No AUDDIS dates found for selected date range.{/ts}</h3>
    {/if}
    <br /><br />
    {if ($groupCountArudd > 0)}
        <div id="id-additional" class="form-item">
        <div class="crm-accordion-wrapper ">
         <div class="crm-accordion-header">
         {ts}Include Arudd Date(s){/ts}
         </div><!-- /.crm-accordion-header -->
         <div class="crm-accordion-body">
          {strip}

          <table>
          {if $groupCountArudd > 0}
            <tr class="crm-mailing-group-form-block-includeGroups"><td class="label">{$form.includeAruddDate.label}</td></tr>
            <tr class="crm-mailing-group-form-block-includeGroups"><td>{$form.includeAruddDate.html}</td></tr>
          {/if}

          </table>

          {/strip}
         </div><!-- /.crm-accordion-body -->
        </div><!-- /.crm-accordion-wrapper -->
    {else}
      <h3>{ts}No ARUDD dates found for selected date range.{/ts}</h3>
    {/if}
    <div class="crm-block crm-form-block crm-campaignmonitor-sync-form-block">
        <div class="crm-submit-buttons">
          {include file="CRM/common/formButtons.tpl"}
        </div>
    </div>
</div>
    {literal}
    <script type="text/javascript">
    cj(function() {
       cj().crmAccordionToggle();
    });
    </script>
    {/literal}
</div>
    