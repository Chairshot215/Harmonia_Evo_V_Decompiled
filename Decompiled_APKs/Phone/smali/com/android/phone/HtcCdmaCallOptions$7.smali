.class Lcom/android/phone/HtcCdmaCallOptions$7;
.super Ljava/lang/Object;
.source "HtcCdmaCallOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HtcCdmaCallOptions;->DoubleConfirmTTYMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaCallOptions;

.field final synthetic val$selectedIndex:I


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaCallOptions;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 613
    iput-object p1, p0, Lcom/android/phone/HtcCdmaCallOptions$7;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    iput p2, p0, Lcom/android/phone/HtcCdmaCallOptions$7;->val$selectedIndex:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/phone/HtcCdmaCallOptions$7;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    iget-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions$7;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    #getter for: Lcom/android/phone/HtcCdmaCallOptions;->mButtonTTY:Lcom/htc/preference/HtcListPreference;
    invoke-static {v1}, Lcom/android/phone/HtcCdmaCallOptions;->access$000(Lcom/android/phone/HtcCdmaCallOptions;)Lcom/htc/preference/HtcListPreference;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/HtcCdmaCallOptions$7;->val$selectedIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #calls: Lcom/android/phone/HtcCdmaCallOptions;->handleTTYChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/HtcCdmaCallOptions;->access$100(Lcom/android/phone/HtcCdmaCallOptions;Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)V

    .line 616
    iget-object v0, p0, Lcom/android/phone/HtcCdmaCallOptions$7;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    #getter for: Lcom/android/phone/HtcCdmaCallOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;
    invoke-static {v0}, Lcom/android/phone/HtcCdmaCallOptions;->access$500(Lcom/android/phone/HtcCdmaCallOptions;)Lcom/htc/preference/HtcPreferenceActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceActivity;->finish()V

    .line 617
    return-void
.end method
