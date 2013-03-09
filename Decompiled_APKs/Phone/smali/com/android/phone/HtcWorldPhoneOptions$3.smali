.class Lcom/android/phone/HtcWorldPhoneOptions$3;
.super Ljava/lang/Object;
.source "HtcWorldPhoneOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HtcWorldPhoneOptions;->optionsOfGsmNetworkMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcWorldPhoneOptions;

.field final synthetic val$currentNetworkType:I


# direct methods
.method constructor <init>(Lcom/android/phone/HtcWorldPhoneOptions;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 956
    iput-object p1, p0, Lcom/android/phone/HtcWorldPhoneOptions$3;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    iput p2, p0, Lcom/android/phone/HtcWorldPhoneOptions$3;->val$currentNetworkType:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions$3;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    iget v1, p0, Lcom/android/phone/HtcWorldPhoneOptions$3;->val$currentNetworkType:I

    #calls: Lcom/android/phone/HtcWorldPhoneOptions;->setUniformNetworkTypeValue(I)V
    invoke-static {v0, v1}, Lcom/android/phone/HtcWorldPhoneOptions;->access$1300(Lcom/android/phone/HtcWorldPhoneOptions;I)V

    .line 961
    return-void
.end method
