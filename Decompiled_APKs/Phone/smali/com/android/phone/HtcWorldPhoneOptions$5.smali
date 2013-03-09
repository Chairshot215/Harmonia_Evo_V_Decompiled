.class Lcom/android/phone/HtcWorldPhoneOptions$5;
.super Ljava/lang/Object;
.source "HtcWorldPhoneOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HtcWorldPhoneOptions;->quickSelectPreferredNetworkMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcWorldPhoneOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcWorldPhoneOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/android/phone/HtcWorldPhoneOptions$5;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions$5;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #getter for: Lcom/android/phone/HtcWorldPhoneOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;
    invoke-static {v0}, Lcom/android/phone/HtcWorldPhoneOptions;->access$1100(Lcom/android/phone/HtcWorldPhoneOptions;)Lcom/htc/preference/HtcPreferenceActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceActivity;->finish()V

    .line 1047
    return-void
.end method
