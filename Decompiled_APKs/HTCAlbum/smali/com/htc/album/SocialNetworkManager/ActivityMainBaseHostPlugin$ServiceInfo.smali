.class public Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$ServiceInfo;
.super Ljava/lang/Object;
.source "ActivityMainBaseHostPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceInfo"
.end annotation


# instance fields
.field public mDisplayName:Ljava/lang/String;

.field public mServiceName:Ljava/lang/String;

.field public mServiceURL:Ljava/lang/String;

.field public mUserBuddyIcon:Ljava/lang/String;

.field public mUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mUserName:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;


# direct methods
.method public constructor <init>(Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$ServiceInfo;->this$0:Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$ServiceInfo;->mServiceURL:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$ServiceInfo;->mDisplayName:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$ServiceInfo;->mUserName:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$ServiceInfo;->mUserBuddyIcon:Ljava/lang/String;

    return-void
.end method
