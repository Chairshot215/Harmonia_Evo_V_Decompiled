.class Lcom/android/settings/wifi/WifiApEnabler$8;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabled(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler$8;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler$8;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    #calls: Lcom/android/settings/wifi/WifiApEnabler;->setHotspotStatus()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApEnabler;->access$700(Lcom/android/settings/wifi/WifiApEnabler;)V

    .line 263
    return-void
.end method
