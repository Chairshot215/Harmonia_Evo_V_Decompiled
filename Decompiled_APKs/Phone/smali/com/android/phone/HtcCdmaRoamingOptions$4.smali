.class Lcom/android/phone/HtcCdmaRoamingOptions$4;
.super Ljava/lang/Object;
.source "HtcCdmaRoamingOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HtcCdmaRoamingOptions;->showAlertDialog(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaRoamingOptions;

.field final synthetic val$roamingType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaRoamingOptions;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/phone/HtcCdmaRoamingOptions$4;->this$0:Lcom/android/phone/HtcCdmaRoamingOptions;

    iput-object p2, p0, Lcom/android/phone/HtcCdmaRoamingOptions$4;->val$roamingType:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions$4;->this$0:Lcom/android/phone/HtcCdmaRoamingOptions;

    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingOptions$4;->val$roamingType:Ljava/lang/String;

    const/4 v2, 0x1

    #calls: Lcom/android/phone/HtcCdmaRoamingOptions;->setupRoamingModeState(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/HtcCdmaRoamingOptions;->access$400(Lcom/android/phone/HtcCdmaRoamingOptions;Ljava/lang/String;Z)V

    .line 323
    return-void
.end method
