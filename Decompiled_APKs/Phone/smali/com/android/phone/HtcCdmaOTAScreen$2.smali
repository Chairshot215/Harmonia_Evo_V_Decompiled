.class Lcom/android/phone/HtcCdmaOTAScreen$2;
.super Ljava/lang/Object;
.source "HtcCdmaOTAScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 153
    iput-object p1, p0, Lcom/android/phone/HtcCdmaOTAScreen$2;->this$0:Lcom/android/phone/HtcCdmaOTAScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/phone/HtcCdmaOTAScreen$2;->this$0:Lcom/android/phone/HtcCdmaOTAScreen;

    invoke-virtual {v0}, Lcom/android/phone/HtcCdmaOTAScreen;->finish()V

    .line 159
    const/4 v0, 0x0

    return v0
.end method
