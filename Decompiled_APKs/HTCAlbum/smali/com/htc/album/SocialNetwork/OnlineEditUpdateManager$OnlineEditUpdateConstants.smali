.class public Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditUpdateConstants;
.super Ljava/lang/Object;
.source "OnlineEditUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnlineEditUpdateConstants"
.end annotation


# static fields
.field public static final UPDATE_ERROR_OTHERS:I = 0x4eeb

.field public static final UPDATE_ERROR_SERVER_ERROR:I = 0x4eea

.field public static final UPDATE_ERROR_SERVICE_NOT_AVAILABLE:I = 0x4ee9


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditUpdateConstants;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
