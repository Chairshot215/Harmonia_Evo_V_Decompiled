.class Lcom/android/mms/util/ViewCache$ViewObj;
.super Ljava/lang/Object;
.source "ViewCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/ViewCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewObj"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/ViewCache;

.field used:Z

.field view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/mms/util/ViewCache;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/mms/util/ViewCache$ViewObj;->this$0:Lcom/android/mms/util/ViewCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
