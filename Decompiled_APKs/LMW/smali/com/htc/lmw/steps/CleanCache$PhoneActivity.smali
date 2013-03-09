.class public Lcom/htc/lmw/steps/CleanCache$PhoneActivity;
.super Lcom/htc/lmw/steps/BasePhoneActivity;
.source "CleanCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lmw/steps/CleanCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/htc/lmw/steps/BasePhoneActivity;-><init>()V

    .line 57
    new-instance v0, Lcom/htc/lmw/steps/CleanCache;

    invoke-direct {v0, p0}, Lcom/htc/lmw/steps/CleanCache;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/htc/lmw/steps/BasePhoneActivity;->wizardInstance:Lcom/htc/lmw/steps/WizardActivityBase;

    .line 58
    return-void
.end method
