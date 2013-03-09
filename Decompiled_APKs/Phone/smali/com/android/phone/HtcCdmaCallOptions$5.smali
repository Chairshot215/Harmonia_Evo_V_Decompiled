.class Lcom/android/phone/HtcCdmaCallOptions$5;
.super Ljava/lang/Object;
.source "HtcCdmaCallOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HtcCdmaCallOptions;->quickSelectTTYMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaCallOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaCallOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/phone/HtcCdmaCallOptions$5;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/phone/HtcCdmaCallOptions$5;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    #getter for: Lcom/android/phone/HtcCdmaCallOptions;->mButtonTTY:Lcom/htc/preference/HtcListPreference;
    invoke-static {v0}, Lcom/android/phone/HtcCdmaCallOptions;->access$000(Lcom/android/phone/HtcCdmaCallOptions;)Lcom/htc/preference/HtcListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 587
    if-nez p2, :cond_1

    .line 588
    iget-object v0, p0, Lcom/android/phone/HtcCdmaCallOptions$5;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    iget-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions$5;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    #getter for: Lcom/android/phone/HtcCdmaCallOptions;->mButtonTTY:Lcom/htc/preference/HtcListPreference;
    invoke-static {v1}, Lcom/android/phone/HtcCdmaCallOptions;->access$000(Lcom/android/phone/HtcCdmaCallOptions;)Lcom/htc/preference/HtcListPreference;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #calls: Lcom/android/phone/HtcCdmaCallOptions;->handleTTYChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/HtcCdmaCallOptions;->access$100(Lcom/android/phone/HtcCdmaCallOptions;Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)V

    .line 589
    iget-object v0, p0, Lcom/android/phone/HtcCdmaCallOptions$5;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    #getter for: Lcom/android/phone/HtcCdmaCallOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;
    invoke-static {v0}, Lcom/android/phone/HtcCdmaCallOptions;->access$500(Lcom/android/phone/HtcCdmaCallOptions;)Lcom/htc/preference/HtcPreferenceActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceActivity;->finish()V

    .line 594
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 595
    return-void

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/android/phone/HtcCdmaCallOptions$5;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    #calls: Lcom/android/phone/HtcCdmaCallOptions;->DoubleConfirmTTYMode(I)V
    invoke-static {v0, p2}, Lcom/android/phone/HtcCdmaCallOptions;->access$600(Lcom/android/phone/HtcCdmaCallOptions;I)V

    goto :goto_0
.end method
