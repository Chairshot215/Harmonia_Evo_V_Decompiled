.class public final enum Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;
.super Ljava/lang/Enum;
.source "SDMProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/provider/SDMProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "COLUMN_SOUNDSET_FROM_SD"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

.field public static final enum _id:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

.field public static final enum fileName:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

.field public static final enum fileSize:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

.field public static final enum isAdd:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

.field public static final enum lastModifyTime:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    new-instance v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

    const-string v1, "_id"

    invoke-direct {v0, v1, v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;->_id:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

    .line 88
    new-instance v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

    const-string v1, "fileName"

    invoke-direct {v0, v1, v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;->fileName:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

    .line 89
    new-instance v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

    const-string v1, "lastModifyTime"

    invoke-direct {v0, v1, v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;->lastModifyTime:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

    .line 90
    new-instance v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

    const-string v1, "fileSize"

    invoke-direct {v0, v1, v5}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;->fileSize:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

    .line 91
    new-instance v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

    const-string v1, "isAdd"

    invoke-direct {v0, v1, v6}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;->isAdd:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

    .line 85
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;->_id:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;->fileName:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;->lastModifyTime:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;->fileSize:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;->isAdd:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;->$VALUES:[Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

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
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;
    .locals 1
    .parameter "name"

    .prologue
    .line 85
    const-class v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

    return-object v0
.end method

.method public static values()[Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;->$VALUES:[Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

    invoke-virtual {v0}, [Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

    return-object v0
.end method
