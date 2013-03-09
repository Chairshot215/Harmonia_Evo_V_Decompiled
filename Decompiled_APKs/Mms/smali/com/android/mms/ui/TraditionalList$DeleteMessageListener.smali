.class Lcom/android/mms/ui/TraditionalList$DeleteMessageListener;
.super Ljava/lang/Object;
.source "TraditionalList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/TraditionalList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMessageListener"
.end annotation


# instance fields
.field private mDeleteUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/mms/ui/TraditionalList;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/TraditionalList;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter "uri"

    .prologue
    .line 2120
    iput-object p1, p0, Lcom/android/mms/ui/TraditionalList$DeleteMessageListener;->this$0:Lcom/android/mms/ui/TraditionalList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2121
    iput-object p2, p0, Lcom/android/mms/ui/TraditionalList$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    .line 2122
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2126
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$DeleteMessageListener;->this$0:Lcom/android/mms/ui/TraditionalList;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/TraditionalList$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/TraditionalList;->deleteWithThread(ZLandroid/net/Uri;)V

    .line 2127
    return-void
.end method
