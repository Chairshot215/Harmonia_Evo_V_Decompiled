.class Lcom/android/phone/HtcCdmaDataRoamGuardV3$3;
.super Ljava/lang/Object;
.source "HtcCdmaDataRoamGuardV3.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HtcCdmaDataRoamGuardV3;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaDataRoamGuardV3;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaDataRoamGuardV3;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/phone/HtcCdmaDataRoamGuardV3$3;->this$0:Lcom/android/phone/HtcCdmaDataRoamGuardV3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/HtcCdmaDataRoamGuardV3$3;->this$0:Lcom/android/phone/HtcCdmaDataRoamGuardV3;

    invoke-virtual {v0}, Lcom/android/phone/HtcCdmaDataRoamGuardV3;->finish()V

    .line 61
    return-void
.end method
