.class public final enum Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;
.super Ljava/lang/Enum;
.source "SDMProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/provider/SDMProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "COLUMN_SOUNDSET_INFO_INDEX"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

.field public static final enum GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

.field public static final enum _id:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

.field public static final enum author:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

.field public static final enum corp:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

.field public static final enum description:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

.field public static final enum lang:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

.field public static final enum name:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 210
    new-instance v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    const-string v1, "_id"

    invoke-direct {v0, v1, v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->_id:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    .line 211
    new-instance v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    const-string v1, "GUID"

    invoke-direct {v0, v1, v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    .line 212
    new-instance v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    const-string v1, "lang"

    invoke-direct {v0, v1, v5}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->lang:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    .line 213
    new-instance v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    const-string v1, "name"

    invoke-direct {v0, v1, v6}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    .line 214
    new-instance v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    const-string v1, "author"

    invoke-direct {v0, v1, v7}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->author:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    .line 215
    new-instance v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    const-string v1, "corp"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->corp:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    .line 216
    new-instance v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    const-string v1, "description"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->description:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    .line 208
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->_id:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->lang:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->author:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->corp:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->description:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->$VALUES:[Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

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
    .line 208
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;
    .locals 1
    .parameter "name"

    .prologue
    .line 208
    const-class v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    return-object v0
.end method

.method public static values()[Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->$VALUES:[Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v0}, [Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    return-object v0
.end method
