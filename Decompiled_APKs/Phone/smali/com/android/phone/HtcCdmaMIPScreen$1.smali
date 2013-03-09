.class Lcom/android/phone/HtcCdmaMIPScreen$1;
.super Ljava/lang/Object;
.source "HtcCdmaMIPScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HtcCdmaMIPScreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaMIPScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaMIPScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/phone/HtcCdmaMIPScreen$1;->this$0:Lcom/android/phone/HtcCdmaMIPScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/phone/HtcCdmaMIPScreen$1;->this$0:Lcom/android/phone/HtcCdmaMIPScreen;

    invoke-virtual {v0}, Lcom/android/phone/HtcCdmaMIPScreen;->finish()V

    .line 126
    return-void
.end method
