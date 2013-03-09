.class Lcom/android/phone/HtcCdmaNetworkBusyScreen$1;
.super Ljava/lang/Object;
.source "HtcCdmaNetworkBusyScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HtcCdmaNetworkBusyScreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaNetworkBusyScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaNetworkBusyScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/phone/HtcCdmaNetworkBusyScreen$1;->this$0:Lcom/android/phone/HtcCdmaNetworkBusyScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/HtcCdmaNetworkBusyScreen$1;->this$0:Lcom/android/phone/HtcCdmaNetworkBusyScreen;

    invoke-virtual {v0}, Lcom/android/phone/HtcCdmaNetworkBusyScreen;->finish()V

    .line 81
    return-void
.end method
