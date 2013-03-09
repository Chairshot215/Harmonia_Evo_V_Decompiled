.class public Lcom/htc/lmw/steps/Uninstall$PhoneActivity;
.super Lcom/htc/lmw/steps/BasePhoneActivity;
.source "Uninstall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lmw/steps/Uninstall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/lmw/steps/BasePhoneActivity;-><init>()V

    .line 35
    new-instance v0, Lcom/htc/lmw/steps/Uninstall;

    invoke-direct {v0, p0}, Lcom/htc/lmw/steps/Uninstall;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/htc/lmw/steps/BasePhoneActivity;->wizardInstance:Lcom/htc/lmw/steps/WizardActivityBase;

    .line 36
    return-void
.end method
