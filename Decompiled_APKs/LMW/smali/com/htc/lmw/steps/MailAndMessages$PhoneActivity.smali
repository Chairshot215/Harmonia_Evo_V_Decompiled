.class public Lcom/htc/lmw/steps/MailAndMessages$PhoneActivity;
.super Lcom/htc/lmw/steps/BasePhoneActivity;
.source "MailAndMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lmw/steps/MailAndMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/htc/lmw/steps/BasePhoneActivity;-><init>()V

    .line 87
    new-instance v0, Lcom/htc/lmw/steps/MailAndMessages;

    invoke-direct {v0, p0}, Lcom/htc/lmw/steps/MailAndMessages;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/htc/lmw/steps/BasePhoneActivity;->wizardInstance:Lcom/htc/lmw/steps/WizardActivityBase;

    .line 88
    return-void
.end method
