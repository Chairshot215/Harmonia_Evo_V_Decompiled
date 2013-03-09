.class Lcom/android/bluetooth/opp/TestActivity$7;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/TestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/TestActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/TestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/bluetooth/opp/TestActivity$7;->this$0:Lcom/android/bluetooth/opp/TestActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 334
    new-instance v0, Lcom/android/bluetooth/opp/TestActivity$7$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/TestActivity$7$1;-><init>(Lcom/android/bluetooth/opp/TestActivity$7;)V

    .line 343
    .local v0, notifyThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 344
    return-void
.end method
