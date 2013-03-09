.class public Lcom/htc/lmw/steps/LowMemoryIntro$PhoneActivity;
.super Lcom/htc/lmw/steps/BasePhoneActivity;
.source "LowMemoryIntro.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lmw/steps/LowMemoryIntro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/htc/lmw/steps/BasePhoneActivity;-><init>()V

    .line 63
    new-instance v0, Lcom/htc/lmw/steps/LowMemoryIntro;

    invoke-direct {v0, p0}, Lcom/htc/lmw/steps/LowMemoryIntro;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/htc/lmw/steps/BasePhoneActivity;->wizardInstance:Lcom/htc/lmw/steps/WizardActivityBase;

    .line 64
    return-void
.end method
