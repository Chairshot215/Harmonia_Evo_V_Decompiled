.class Lcom/android/phone/HtcCdmaGloableRoamingActivity$1;
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
    .line 110
    iput-object p1, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$1;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$1;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    invoke-virtual {v0}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->finish()V

    .line 114
    return-void
.end method
