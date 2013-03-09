.class Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler$1;
.super Ljava/lang/Object;
.source "TraditionalList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1899
    iput-object p1, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler$1;->this$1:Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler$1;->this$1:Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;

    iget-object v0, v0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    invoke-virtual {v0}, Lcom/android/mms/ui/TraditionalList;->updateDeleteItemsCount()V

    .line 1902
    return-void
.end method
