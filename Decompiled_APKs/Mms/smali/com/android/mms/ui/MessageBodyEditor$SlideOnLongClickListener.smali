.class public Lcom/android/mms/ui/MessageBodyEditor$SlideOnLongClickListener;
.super Ljava/lang/Object;
.source "MessageBodyEditor.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageBodyEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SlideOnLongClickListener"
.end annotation


# instance fields
.field mPosition:I

.field final synthetic this$0:Lcom/android/mms/ui/MessageBodyEditor;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageBodyEditor;I)V
    .locals 0
    .parameter
    .parameter "pos"

    .prologue
    .line 2215
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor$SlideOnLongClickListener;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2216
    iput p2, p0, Lcom/android/mms/ui/MessageBodyEditor$SlideOnLongClickListener;->mPosition:I

    .line 2217
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 2220
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$SlideOnLongClickListener;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageBodyEditor$SlideOnLongClickListener;->mPosition:I

    #calls: Lcom/android/mms/ui/MessageBodyEditor;->showSlideActionList(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageBodyEditor;->access$1600(Lcom/android/mms/ui/MessageBodyEditor;I)V

    .line 2221
    const/4 v0, 0x1

    return v0
.end method
