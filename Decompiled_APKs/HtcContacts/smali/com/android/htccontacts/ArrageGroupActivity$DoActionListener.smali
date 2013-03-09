.class Lcom/android/htccontacts/ArrageGroupActivity$DoActionListener;
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
    name = "DoActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ArrageGroupActivity;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/ArrageGroupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/htccontacts/ArrageGroupActivity$DoActionListener;->this$0:Lcom/android/htccontacts/ArrageGroupActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/ArrageGroupActivity;Lcom/android/htccontacts/ArrageGroupActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ArrageGroupActivity$DoActionListener;-><init>(Lcom/android/htccontacts/ArrageGroupActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity$DoActionListener;->this$0:Lcom/android/htccontacts/ArrageGroupActivity;

    #calls: Lcom/android/htccontacts/ArrageGroupActivity;->updateGroupOrder()V
    invoke-static {v0}, Lcom/android/htccontacts/ArrageGroupActivity;->access$500(Lcom/android/htccontacts/ArrageGroupActivity;)V

    .line 269
    return-void
.end method
