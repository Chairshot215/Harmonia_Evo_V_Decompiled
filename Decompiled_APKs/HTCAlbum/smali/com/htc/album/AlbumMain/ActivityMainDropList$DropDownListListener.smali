.class Lcom/htc/album/AlbumMain/ActivityMainDropList$DropDownListListener;
.super Ljava/lang/Object;
.source "ActivityMainDropList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/AlbumMain/ActivityMainDropList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropDownListListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;


# direct methods
.method private constructor <init>(Lcom/htc/album/AlbumMain/ActivityMainDropList;)V
    .locals 0
    .parameter

    .prologue
    .line 480
    iput-object p1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$DropDownListListener;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/AlbumMain/ActivityMainDropList;Lcom/htc/album/AlbumMain/ActivityMainDropList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 480
    invoke-direct {p0, p1}, Lcom/htc/album/AlbumMain/ActivityMainDropList$DropDownListListener;-><init>(Lcom/htc/album/AlbumMain/ActivityMainDropList;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$DropDownListListener;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    #calls: Lcom/htc/album/AlbumMain/ActivityMainDropList;->onPrepareDropList()V
    invoke-static {v0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->access$400(Lcom/htc/album/AlbumMain/ActivityMainDropList;)V

    .line 486
    check-cast p1, Lcom/htc/widget/HeaderBarDropDown;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/widget/HeaderBarDropDown;->show()V

    .line 487
    return-void
.end method
