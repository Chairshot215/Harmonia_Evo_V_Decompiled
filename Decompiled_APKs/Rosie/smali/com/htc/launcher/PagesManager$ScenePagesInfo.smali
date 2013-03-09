.class public Lcom/htc/launcher/PagesManager$ScenePagesInfo;
.super Ljava/lang/Object;
.source "PagesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/PagesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScenePagesInfo"
.end annotation


# instance fields
.field public homeIndex:I

.field public id:I

.field public pagesCount:I

.field public sceneName:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/launcher/PagesManager;


# direct methods
.method public constructor <init>(Lcom/htc/launcher/PagesManager;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/htc/launcher/PagesManager$ScenePagesInfo;->this$0:Lcom/htc/launcher/PagesManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
