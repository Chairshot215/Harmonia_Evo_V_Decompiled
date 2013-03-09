.class Lcom/android/phone/HtcCdmaGloableRoamingActivity$3;
.super Ljava/lang/Object;
.source "HtcCdmaGloableRoamingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HtcCdmaGloableRoamingActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaGloableRoamingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$3;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$3;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    #getter for: Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->access$000(Lcom/android/phone/HtcCdmaGloableRoamingActivity;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->localSetGlobalRoamingOption(Lcom/android/internal/telephony/Phone;I)V

    .line 141
    iget-object v0, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$3;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    invoke-virtual {v0}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->finish()V

    .line 142
    return-void
.end method
