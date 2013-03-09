.class public final enum Lcom/htc/home/personalize/abstractresource/Resource$Const;
.super Ljava/lang/Enum;
.source "Resource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/abstractresource/Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Const"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/home/personalize/abstractresource/Resource$Const;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/home/personalize/abstractresource/Resource$Const;

.field public static final enum DETAILS:Lcom/htc/home/personalize/abstractresource/Resource$Const;

.field public static final enum DOWNLOADED:Lcom/htc/home/personalize/abstractresource/Resource$Const;

.field public static final enum DOWNLOADING:Lcom/htc/home/personalize/abstractresource/Resource$Const;

.field public static final enum ICON:Lcom/htc/home/personalize/abstractresource/Resource$Const;

.field public static final enum ICON_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

.field public static final enum LIST:Lcom/htc/home/personalize/abstractresource/Resource$Const;

.field public static final enum ONLINE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

.field public static final enum THUMBNAIL:Lcom/htc/home/personalize/abstractresource/Resource$Const;

.field public static final enum THUMBNAIL_LANDSCAPE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

.field public static final enum THUMBNAIL_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;

    const-string v1, "ONLINE"

    invoke-direct {v0, v1, v3}, Lcom/htc/home/personalize/abstractresource/Resource$Const;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ONLINE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    .line 7
    new-instance v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v4}, Lcom/htc/home/personalize/abstractresource/Resource$Const;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADING:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    new-instance v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;

    const-string v1, "DOWNLOADED"

    invoke-direct {v0, v1, v5}, Lcom/htc/home/personalize/abstractresource/Resource$Const;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADED:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    .line 8
    new-instance v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;

    const-string v1, "ICON"

    invoke-direct {v0, v1, v6}, Lcom/htc/home/personalize/abstractresource/Resource$Const;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ICON:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    new-instance v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;

    const-string v1, "THUMBNAIL"

    invoke-direct {v0, v1, v7}, Lcom/htc/home/personalize/abstractresource/Resource$Const;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    new-instance v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;

    const-string v1, "LIST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/home/personalize/abstractresource/Resource$Const;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;->LIST:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    .line 9
    new-instance v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;

    const-string v1, "ICON_PORTRAIT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/home/personalize/abstractresource/Resource$Const;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ICON_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    new-instance v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;

    const-string v1, "THUMBNAIL_LANDSCAPE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/home/personalize/abstractresource/Resource$Const;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_LANDSCAPE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    new-instance v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;

    const-string v1, "THUMBNAIL_PORTRAIT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/htc/home/personalize/abstractresource/Resource$Const;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    new-instance v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;

    const-string v1, "DETAILS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/htc/home/personalize/abstractresource/Resource$Const;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DETAILS:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    .line 5
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/htc/home/personalize/abstractresource/Resource$Const;

    sget-object v1, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ONLINE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADING:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADED:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ICON:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/home/personalize/abstractresource/Resource$Const;->LIST:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ICON_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_LANDSCAPE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DETAILS:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;->$VALUES:[Lcom/htc/home/personalize/abstractresource/Resource$Const;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/home/personalize/abstractresource/Resource$Const;
    .locals 1
    .parameter "name"

    .prologue
    .line 5
    const-class v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;

    return-object v0
.end method

.method public static values()[Lcom/htc/home/personalize/abstractresource/Resource$Const;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;->$VALUES:[Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v0}, [Lcom/htc/home/personalize/abstractresource/Resource$Const;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/home/personalize/abstractresource/Resource$Const;

    return-object v0
.end method
