.class Lcom/android/camera/widget/PopupMenu$1;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/PopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/PopupMenu;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/PopupMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/PopupMenu$1;->this$0:Lcom/android/camera/widget/PopupMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu$1;->this$0:Lcom/android/camera/widget/PopupMenu;

    invoke-virtual {v0}, Lcom/android/camera/widget/PopupMenu;->close()V

    return-void
.end method
