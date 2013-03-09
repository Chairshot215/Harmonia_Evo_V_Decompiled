.class Lcom/android/mms/ui/TraditionalList$6;
.super Ljava/lang/Object;
.source "TraditionalList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/TraditionalList;->setRightButtonImage(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/TraditionalList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TraditionalList;)V
    .locals 0
    .parameter

    .prologue
    .line 925
    iput-object p1, p0, Lcom/android/mms/ui/TraditionalList$6;->this$0:Lcom/android/mms/ui/TraditionalList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$6;->this$0:Lcom/android/mms/ui/TraditionalList;

    invoke-virtual {v0}, Lcom/android/mms/ui/TraditionalList;->createNewMessage()V

    .line 929
    return-void
.end method
