.class public Lcom/htc/dlnamediaserver/ShareFolderItem;
.super Ljava/lang/Object;
.source "ShareFolderItem.java"


# instance fields
.field public mChecked:Z

.field public mDisplayedName:Ljava/lang/String;

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "aName"
    .parameter "aDisplayedName"
    .parameter "aChecked"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnamediaserver/ShareFolderItem;->mChecked:Z

    .line 11
    iput-object p1, p0, Lcom/htc/dlnamediaserver/ShareFolderItem;->mName:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/htc/dlnamediaserver/ShareFolderItem;->mDisplayedName:Ljava/lang/String;

    .line 13
    iput-boolean p3, p0, Lcom/htc/dlnamediaserver/ShareFolderItem;->mChecked:Z

    .line 14
    return-void
.end method
