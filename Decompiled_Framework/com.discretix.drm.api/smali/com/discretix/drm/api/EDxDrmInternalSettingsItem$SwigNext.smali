.class Lcom/discretix/drm/api/EDxDrmInternalSettingsItem$SwigNext;
.super Ljava/lang/Object;
.source "EDxDrmInternalSettingsItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discretix/drm/api/EDxDrmInternalSettingsItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwigNext"
.end annotation


# static fields
.field private static next:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/discretix/drm/api/EDxDrmInternalSettingsItem$SwigNext;->next:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(I)I
    .locals 0

    sput p0, Lcom/discretix/drm/api/EDxDrmInternalSettingsItem$SwigNext;->next:I

    return p0
.end method

.method static synthetic access$008()I
    .locals 2

    sget v0, Lcom/discretix/drm/api/EDxDrmInternalSettingsItem$SwigNext;->next:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/discretix/drm/api/EDxDrmInternalSettingsItem$SwigNext;->next:I

    return v0
.end method
