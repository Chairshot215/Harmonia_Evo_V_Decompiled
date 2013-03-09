.class public Lcom/htc/lmw/steps/MoveToSdCard$PhoneActivity;
.super Lcom/htc/lmw/steps/BasePhoneActivity;
.source "MoveToSdCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lmw/steps/MoveToSdCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/lmw/steps/BasePhoneActivity;-><init>()V

    .line 40
    new-instance v0, Lcom/htc/lmw/steps/MoveToSdCard;

    invoke-direct {v0, p0}, Lcom/htc/lmw/steps/MoveToSdCard;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/htc/lmw/steps/BasePhoneActivity;->wizardInstance:Lcom/htc/lmw/steps/WizardActivityBase;

    .line 41
    return-void
.end method
