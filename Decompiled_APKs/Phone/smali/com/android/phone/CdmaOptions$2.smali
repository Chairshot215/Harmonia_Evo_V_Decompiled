.class Lcom/android/phone/CdmaOptions$2;
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
    .line 420
    iput-object p1, p0, Lcom/android/phone/CdmaOptions$2;->this$0:Lcom/android/phone/CdmaOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/phone/CdmaOptions$2;->this$0:Lcom/android/phone/CdmaOptions;

    #getter for: Lcom/android/phone/CdmaOptions;->mButtonCallGuard:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/CdmaOptions;->access$100(Lcom/android/phone/CdmaOptions;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 424
    return-void
.end method
