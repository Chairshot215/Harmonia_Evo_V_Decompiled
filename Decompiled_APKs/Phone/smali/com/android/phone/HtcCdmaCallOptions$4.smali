.class Lcom/android/phone/HtcCdmaCallOptions$4;
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
    .line 597
    iput-object p1, p0, Lcom/android/phone/HtcCdmaCallOptions$4;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 600
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 601
    iget-object v0, p0, Lcom/android/phone/HtcCdmaCallOptions$4;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    #getter for: Lcom/android/phone/HtcCdmaCallOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;
    invoke-static {v0}, Lcom/android/phone/HtcCdmaCallOptions;->access$500(Lcom/android/phone/HtcCdmaCallOptions;)Lcom/htc/preference/HtcPreferenceActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceActivity;->finish()V

    .line 602
    return-void
.end method
