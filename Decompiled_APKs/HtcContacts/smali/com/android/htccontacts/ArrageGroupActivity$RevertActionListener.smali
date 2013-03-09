.class Lcom/android/htccontacts/ArrageGroupActivity$RevertActionListener;
.super Ljava/lang/Object;
.source "ArrageGroupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ArrageGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RevertActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ArrageGroupActivity;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/ArrageGroupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/htccontacts/ArrageGroupActivity$RevertActionListener;->this$0:Lcom/android/htccontacts/ArrageGroupActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/ArrageGroupActivity;Lcom/android/htccontacts/ArrageGroupActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ArrageGroupActivity$RevertActionListener;-><init>(Lcom/android/htccontacts/ArrageGroupActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity$RevertActionListener;->this$0:Lcom/android/htccontacts/ArrageGroupActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ArrageGroupActivity;->setResult(I)V

    .line 275
    iget-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity$RevertActionListener;->this$0:Lcom/android/htccontacts/ArrageGroupActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ArrageGroupActivity;->finish()V

    .line 276
    return-void
.end method
