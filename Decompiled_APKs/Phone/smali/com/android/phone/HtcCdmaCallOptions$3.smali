.class Lcom/android/phone/HtcCdmaCallOptions$3;
.super Ljava/lang/Object;
.source "HtcCdmaCallOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HtcCdmaCallOptions;->onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaCallOptions;

.field final synthetic val$Clone_objValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaCallOptions;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/phone/HtcCdmaCallOptions$3;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    iput-object p2, p0, Lcom/android/phone/HtcCdmaCallOptions$3;->val$Clone_objValue:Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/phone/HtcCdmaCallOptions$3;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    iget-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions$3;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    #getter for: Lcom/android/phone/HtcCdmaCallOptions;->mButtonTTY:Lcom/htc/preference/HtcListPreference;
    invoke-static {v1}, Lcom/android/phone/HtcCdmaCallOptions;->access$000(Lcom/android/phone/HtcCdmaCallOptions;)Lcom/htc/preference/HtcListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/HtcCdmaCallOptions$3;->val$Clone_objValue:Ljava/lang/Object;

    #calls: Lcom/android/phone/HtcCdmaCallOptions;->handleTTYChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/HtcCdmaCallOptions;->access$100(Lcom/android/phone/HtcCdmaCallOptions;Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)V

    .line 442
    return-void
.end method
