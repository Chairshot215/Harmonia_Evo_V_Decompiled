.class Lcom/android/phone/GsmUmtsCallOptions$2;
.super Ljava/lang/Object;
.source "GsmUmtsCallOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/GsmUmtsCallOptions;->onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GsmUmtsCallOptions;

.field final synthetic val$cb:Lcom/android/internal/telephony/gsm/CBMessage;


# direct methods
.method constructor <init>(Lcom/android/phone/GsmUmtsCallOptions;Lcom/android/internal/telephony/gsm/CBMessage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/phone/GsmUmtsCallOptions$2;->this$0:Lcom/android/phone/GsmUmtsCallOptions;

    iput-object p2, p0, Lcom/android/phone/GsmUmtsCallOptions$2;->val$cb:Lcom/android/internal/telephony/gsm/CBMessage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 355
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallOptions$2;->val$cb:Lcom/android/internal/telephony/gsm/CBMessage;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/internal/telephony/gsm/CBMessage;->setCBChannel(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallOptions$2;->this$0:Lcom/android/phone/GsmUmtsCallOptions;

    #calls: Lcom/android/phone/GsmUmtsCallOptions;->clearCellbroadcastDatabase()V
    invoke-static {v0}, Lcom/android/phone/GsmUmtsCallOptions;->access$100(Lcom/android/phone/GsmUmtsCallOptions;)V

    .line 359
    return-void
.end method
