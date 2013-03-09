.class Lcom/android/mms/ui/QTextInsert$1;
.super Ljava/lang/Object;
.source "QTextInsert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/QTextInsert;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/QTextInsert;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/QTextInsert;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/mms/ui/QTextInsert$1;->this$0:Lcom/android/mms/ui/QTextInsert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/mms/ui/QTextInsert$1;->this$0:Lcom/android/mms/ui/QTextInsert;

    #calls: Lcom/android/mms/ui/QTextInsert;->saveState()V
    invoke-static {v0}, Lcom/android/mms/ui/QTextInsert;->access$000(Lcom/android/mms/ui/QTextInsert;)V

    .line 173
    return-void
.end method
