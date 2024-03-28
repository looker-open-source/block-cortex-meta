<h2><span style="color:#2d7eea">What does this Looker Block do for me?</span></h2>

Get a comprehensive overview of your campaign spend, performance and audience targeting with actionable insights for paid media campaigns in META across platforms (Facebook, Instagram, Facebook Audience Network) and placements.

Jumpstart your paid media marketing analytics for META by ingesting your campaign data on META into Google BigQuery with pre-packaged ingestion pipelines and connecting to reporting datasets provided by Google Cloud Cortex Framework Data Foundation for Marketing.

Get out-of-the-box insights on impressions, click & view rates and key audience targeting and engagement metrics for campaigns by platform and placement. Customize and / or extend the pre-packaged visualizations with more fine-granular level metrics like creative(ad level), demographics (age, gender) available in the reporting layer of Google Cloud Cortex Framework Data Foundation.

You can also extend to insights beyond Marketing with other datasets in Google Cloud Cortex data Foundation that provide reporting views for other enterprise data sources (like your enterprise CRM, ERP systems).

<h2>What insights are possible?</h2>

Following insights are provided out-of-the-box:

<h3> Overall Campaign Performance </h3>
Overview of high-level campaign performance and engagement metrics including:
- Total Impressions, Clicks, Video Views, CTR(Click Through Rate) / VTR (View Through Rate)
- Total Cost, CPM (Cost per Mile)
- Total Reach and Engagement Rate
- Frequency and Post Engagement actions

<h3> What campaigns have run? </h3>
- **Campaign Timeline** - See a chronological view of all the active campaigns based on date range showing campaign start and end dates.

<h3> What is the cumulative campaign spend? </h3>
- **Monthly Campaign Spend** - Understand how your campaign spend totalled over a specific time period.

<h3> How many impressions did I buy? </h3>
- **Impressions by Campaign** -  Understand impression volume by campaign , associated cost (CPM) and CTR
- **Campaign Impressions by Platform & Placement** - Understand impressions by placement across Facebook, Instagram and FAN with cost(CPM) and CTR

<h3> How did my Video Ads perform? </h3>
- **Campaign Video Views by Platform & Placement** - Understand video views, VTR by platform and placement and CPCV (Cost per Completed View)
- **Video Views by Campaign** - Understand video views by campaign, VTR, and CPCV (Cost per completed view)

<h3> What was the engagement performance for my campaigns? </h3>
- **Actions by Campaign** - Understand engagement volume by engagement type and campaign
- **Engagement by Campaign** - Understand engagement volume and rate by engagement type and campaign with associated cost

<h3> How did my target audience engage with my campaigns? </h3>
- **Impressions by Ad Set Audience Targeting** - Understand the breakdown of Custom, Lookalike and Interests audience impression exposure and associated  cost (CPM)
- **Ad Set Audience Engagement by Platform** - Understand the breakdown of Custom, Lookalike, and Interests audience engagement by platform and associated cost (CPE - Cost per Engagement)
- **Completed Videos by Ad Set Audience targeting and Platform** - Understand Custom, Lookalike and Interests Adset video VTR  by platform with CPCV (Cost Per Completed View)

<h2>Required Data</h2>

Get the required BigQuery datasets for this block by following the installation instructions for [Google Cloud Cortex Framework](https://github.com/GoogleCloudPlatform/cortex-data-foundation).

<h2>Installation Instructions</h2>

Manually install this LookML Model following one of the options below.

<h4> Option A: Marketplace Install via Git </h4>

Refer to the Looker documentation for [Installing a Tool from Marketplace.](https://cloud.google.com/looker/docs/marketplace#installing_a_tool_from_a_git_url) Provide values for the required prompts as outlined in next section Required Parameters.

<h4> Option B: Manual Install via Fork of this Repository </h4>

- [Fork this GitHub repository](https://docs.github.com/en/get-started/quickstart/fork-a-repo#forking-a-repository)
- [Create a blank LookML project](https://cloud.google.com/looker/docs/create-projects#creating_a_blank_project) with any name (e.g., cortex_sap_operational)
- [Connect the new LookML project to the forked repository](https://cloud.google.com/looker/docs/setting-up-git-connection)
- Update the values of constants in the manifest.lkml file as described in the next section Required Parameters
- [Commit and deploy changes to production](https://cloud.google.com/looker/docs/version-control-and-deploying-changes#getting_your_changes_to_production)
With the Looker project based on your forked repository, you can customize the LookML to fit your unique business needs.

<h2><span style="color:#2d7eea">Required Customizations</span></h2>

Required Constant Values are configured during the Installation process

- **Connection**: - In the manifest.lkml file, update the value of the CONNECTION_NAME constant.

- Google Cloud Project: The Google Cloud project where the Meta reporting dataset resides in BigQuery (i.e. Google Cloud  project id). [Identifying Project ID](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects)

- Reporting Dataset: - The deployed Cortex Data Foundation dataset where the META reporting views reside within the Google Cloud BigQuery project. Depending on the deployment settings for the [Google Cloud Cortex Data Foundation](https://github.com/GoogleCloudPlatform/cortex-data-foundation) (see section Required Data), this dataset name would typically be of the pattern ending with  _REPORTING.

- **Derived Tables**: - [Derived Tables](https://cloud.google.com/looker/docs/derived-tables#use_cases_for_pdts) required for Adset visualizations in the dashboard.

- (Optional) Unhide additional dimensions and measure: - Some dimensions and measures have been hidden to simplify reporting and data understanding. However should you find anything valuable missing, simply update the hidden parameters to No in the relevant views.

<h2><span style="color:#2d7eea">Additional Resources</span></h2>

To learn more about LookML and how to develop visit:
- [Looker Best Practices](https://cloud.google.com/looker/docs/best-practices/home)
- [Looker/Google Cloud Training](https://www.cloudskillsboost.google/catalog)
