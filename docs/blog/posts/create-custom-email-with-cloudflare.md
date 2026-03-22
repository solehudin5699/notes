---
date: 2026-03-22T16:00:00
authors:
  - solehudin5699

comments: true
continue: true
---

# Create Custom Email with Own Domain Using Cloudflare

Learn how to create a professional email address using your own domain with Cloudflare Email Routing - it's free and easy to set up!

<!-- more -->

## Prerequisites

- A domain added to Cloudflare Dashboard
- An existing email address (like Gmail) to receive forwarded emails

## Part 1: Setting Up Email Routing

### Step 1: Login to Cloudflare

Go to [Cloudflare Dashboard](https://dash.cloudflare.com) and log in to your account.

### Step 2: Select Your Domain

Choose the domain you want to configure for email routing.

### Step 3: Activate Email Routing

1. In your domain dashboard, look for **Email** in the sidebar (or use the search feature)
2. Click **Set up** under Email Routing
3. Follow the prompts to activate the feature

### Step 4: Create Custom Email Address

1. Click **Create Address**
2. Fill in the form:
   - **Custom Address**: Your desired email (e.g., `hello@yourdomain.com`)
   - **Destination Address**: Your existing email to receive forwarded emails (e.g., `yourname@gmail.com`)
3. Click **Save**

### Step 5: Update DNS Records

Cloudflare will automatically add the required MX Records and TXT Records.

!!! warning
Make sure DNS Records are set to **DNS Only** (gray cloud), not **Proxied** (orange cloud).

### Step 6: Test the Setup

Send an email to your new custom address (e.g., `hello@yourdomain.com`) and verify it forwards to your destination address.

## Part 2: Sending Emails from Custom Address

Cloudflare Email Routing only supports **email forwarding**. To send emails from your custom address, you need an SMTP service.

### Option 1: Gmail SMTP (Free & Easy)

#### Step 1: Configure Gmail

1. Open your Gmail account
2. Go to **Settings** (gear icon) > **See all settings**
3. Navigate to **Accounts and Import** tab
4. Under **Send mail as**, click **Add another email address**

#### Step 2: Enter SMTP Details

| Field             | Value                                            |
| ----------------- | ------------------------------------------------ |
| Name              | Your display name                                |
| Email Address     | Your custom email (e.g., `hello@yourdomain.com`) |
| Treat as an alias | Check this option                                |

Click **Next Step** and fill in:

| Field       | Value                                    |
| ----------- | ---------------------------------------- |
| SMTP Server | `smtp.gmail.com`                         |
| Port        | `587` (TLS) or `465` (SSL)               |
| Username    | Your Gmail address                       |
| Password    | App Password (not your regular password) |

#### Step 3: Create App Password

If you use 2-Step Verification with SMS, you need an App Password:

1. Go to [myaccount.google.com](https://myaccount.google.com)
2. Navigate to **Security**
3. Under **Signing in to Google**, click **App Passwords**
4. Select **Mail** > **Other (Custom name)** > Enter name like "SMTP Cloudflare"
5. Click **Generate**
6. Copy the 16-character password (you'll only see it once)

#### Step 4: Verify

Gmail will send a verification code to your custom email address. Since it's forwarded to your Gmail, check your inbox and enter the code.

### Option 2: Zoho Mail (Free & More Professional)

#### Step 1: Sign Up

1. Go to [Zoho Mail](https://www.zoho.com/mail/) and sign up for Business Email
2. Register your domain

#### Step 2: Configure DNS in Cloudflare

Add the MX Records, SPF, and DKIM records provided by Zoho. Make sure all are set to **DNS Only**.

#### Step 3: Verify Domain

Click **Verify** in Zoho dashboard after adding all DNS records.

#### Step 4: SMTP Configuration

| Field       | Value                      |
| ----------- | -------------------------- |
| SMTP Server | `smtp.zoho.com`            |
| Port        | `465` (SSL) or `587` (TLS) |
| Username    | Your custom email          |
| Password    | Your Zoho password         |

## Comparison

| Feature           | Gmail SMTP        | Zoho Mail            |
| ----------------- | ----------------- | -------------------- |
| SMTP Server       | `smtp.gmail.com`  | `smtp.zoho.com`      |
| DNS Changes       | Not required      | MX, SPF, DKIM needed |
| Daily Limit       | 500 emails (free) | 5,000 emails (free)  |
| Interface         | Gmail             | Zoho Mail            |
| Professional Look | Moderate          | High                 |

## Managing Email Routing

### Delete Email Routing

1. Go to **Email** in Cloudflare Dashboard
2. Find the address you want to remove
3. Click the **Delete** icon
4. Optionally remove related MX and TXT records from DNS

### Change Destination Address

1. Go to **Email** in Cloudflare Dashboard
2. Click the **Edit** icon next to the address
3. Update the **Destination Address**
4. Click **Save**

## Important Notes

!!! warning - Cloudflare Email Routing only supports **forwarding**, not sending - For sending emails, you need an SMTP service like Gmail or Zoho - DNS records must be set to **DNS Only** (gray cloud), not proxied

## Conclusion

With Cloudflare Email Routing, you can create professional-looking email addresses for free. Choose Gmail SMTP if you want simplicity, or Zoho Mail for a more professional standalone email service.
