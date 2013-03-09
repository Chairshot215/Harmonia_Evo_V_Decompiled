.class Lcom/android/phone/CdmaOptions$6;
.super Ljava/lang/Object;
.source "CdmaOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CdmaOptions;->preferenceTreeClick(Lcom/htc/preference/HtcPreference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/CdmaOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/phone/CdmaOptions$6;->this$0:Lcom/android/phone/CdmaOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 447
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/HtcCdmaPhoneApp;->setCdmaCallGuardSetting(Z)V

    .line 448
    return-void
.end method
