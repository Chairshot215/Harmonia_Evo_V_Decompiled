.class Lcom/android/phone/ManualSelectNetwork$6;
.super Ljava/lang/Object;
.source "ManualSelectNetwork.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ManualSelectNetwork;->displayNetworkSelectionSucceeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ManualSelectNetwork;


# direct methods
.method constructor <init>(Lcom/android/phone/ManualSelectNetwork;)V
    .locals 0
    .parameter

    .prologue
    .line 676
    iput-object p1, p0, Lcom/android/phone/ManualSelectNetwork$6;->this$0:Lcom/android/phone/ManualSelectNetwork;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/phone/ManualSelectNetwork$6;->this$0:Lcom/android/phone/ManualSelectNetwork;

    invoke-virtual {v0}, Lcom/android/phone/ManualSelectNetwork;->finish()V

    .line 680
    return-void
.end method
