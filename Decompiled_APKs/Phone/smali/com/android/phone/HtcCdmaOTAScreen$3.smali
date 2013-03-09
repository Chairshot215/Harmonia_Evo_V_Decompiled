.class Lcom/android/phone/HtcCdmaOTAScreen$3;
.super Ljava/lang/Object;
.source "HtcCdmaOTAScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HtcCdmaOTAScreen;->initOTADialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaOTAScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaOTAScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/phone/HtcCdmaOTAScreen$3;->this$0:Lcom/android/phone/HtcCdmaOTAScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/phone/HtcCdmaOTAScreen$3;->this$0:Lcom/android/phone/HtcCdmaOTAScreen;

    #getter for: Lcom/android/phone/HtcCdmaOTAScreen;->otaId:I
    invoke-static {v0}, Lcom/android/phone/HtcCdmaOTAScreen;->access$100(Lcom/android/phone/HtcCdmaOTAScreen;)I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/phone/HtcCdmaOTAScreen$3;->this$0:Lcom/android/phone/HtcCdmaOTAScreen;

    invoke-virtual {v0}, Lcom/android/phone/HtcCdmaOTAScreen;->finish()V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/phone/HtcCdmaOTAScreen$3;->this$0:Lcom/android/phone/HtcCdmaOTAScreen;

    #calls: Lcom/android/phone/HtcCdmaOTAScreen;->shutdownDevice()V
    invoke-static {v0}, Lcom/android/phone/HtcCdmaOTAScreen;->access$200(Lcom/android/phone/HtcCdmaOTAScreen;)V

    goto :goto_0
.end method
