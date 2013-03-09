.class public final enum Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;
.super Ljava/lang/Enum;
.source "GlobalDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/GlobalDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BrowsingReturnType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;

.field public static final enum BROWSING_CONTENT_ADD:Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;

.field public static final enum BROWSING_CONTENT_DONE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;

.field public static final enum BROWSING_CONTENT_ERROR:Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;

.field public static final enum BROWSING_CONTENT_UPDATE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 137
    new-instance v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;

    const-string v1, "BROWSING_CONTENT_ADD"

    invoke-direct {v0, v1, v2}, Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;->BROWSING_CONTENT_ADD:Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;

    .line 138
    new-instance v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;

    const-string v1, "BROWSING_CONTENT_DONE"

    invoke-direct {v0, v1, v3}, Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;->BROWSING_CONTENT_DONE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;

    .line 139
    new-instance v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;

    const-string v1, "BROWSING_CONTENT_UPDATE"

    invoke-direct {v0, v1, v4}, Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;->BROWSING_CONTENT_UPDATE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;

    .line 140
    new-instance v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;

    const-string v1, "BROWSING_CONTENT_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;->BROWSING_CONTENT_ERROR:Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;

    .line 135
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;

    sget-object v1, Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;->BROWSING_CONTENT_ADD:Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;->BROWSING_CONTENT_DONE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;->BROWSING_CONTENT_UPDATE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;->BROWSING_CONTENT_ERROR:Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;->$VALUES:[Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;
    .locals 1
    .parameter "name"

    .prologue
    .line 135
    const-class v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;

    return-object v0
.end method

.method public static values()[Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;->$VALUES:[Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;

    invoke-virtual {v0}, [Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;

    return-object v0
.end method
