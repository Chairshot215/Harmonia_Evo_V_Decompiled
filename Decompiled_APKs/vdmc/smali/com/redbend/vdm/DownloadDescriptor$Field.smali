.class public final enum Lcom/redbend/vdm/DownloadDescriptor$Field;
.super Ljava/lang/Enum;
.source "DownloadDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbend/vdm/DownloadDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/redbend/vdm/DownloadDescriptor$Field;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/redbend/vdm/DownloadDescriptor$Field;

.field public static final enum COUNT:Lcom/redbend/vdm/DownloadDescriptor$Field;

.field public static final enum DESCRIPTION:Lcom/redbend/vdm/DownloadDescriptor$Field;

.field public static final enum ICON_URI:Lcom/redbend/vdm/DownloadDescriptor$Field;

.field public static final enum INFO_URL:Lcom/redbend/vdm/DownloadDescriptor$Field;

.field public static final enum INSTALL_NOTIFY_URI:Lcom/redbend/vdm/DownloadDescriptor$Field;

.field public static final enum INSTALL_PARAM:Lcom/redbend/vdm/DownloadDescriptor$Field;

.field public static final enum NAME:Lcom/redbend/vdm/DownloadDescriptor$Field;

.field public static final enum NEXT_URL:Lcom/redbend/vdm/DownloadDescriptor$Field;

.field public static final enum OBJECT_URI:Lcom/redbend/vdm/DownloadDescriptor$Field;

.field public static final enum SIZE:Lcom/redbend/vdm/DownloadDescriptor$Field;

.field public static final enum TYPE:Lcom/redbend/vdm/DownloadDescriptor$Field;

.field public static final enum VENDOR:Lcom/redbend/vdm/DownloadDescriptor$Field;

.field public static final enum VERSION:Lcom/redbend/vdm/DownloadDescriptor$Field;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/redbend/vdm/DownloadDescriptor$Field;

    const-string v1, "SIZE"

    invoke-direct {v0, v1, v3}, Lcom/redbend/vdm/DownloadDescriptor$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/DownloadDescriptor$Field;->SIZE:Lcom/redbend/vdm/DownloadDescriptor$Field;

    .line 15
    new-instance v0, Lcom/redbend/vdm/DownloadDescriptor$Field;

    const-string v1, "OBJECT_URI"

    invoke-direct {v0, v1, v4}, Lcom/redbend/vdm/DownloadDescriptor$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/DownloadDescriptor$Field;->OBJECT_URI:Lcom/redbend/vdm/DownloadDescriptor$Field;

    .line 17
    new-instance v0, Lcom/redbend/vdm/DownloadDescriptor$Field;

    const-string v1, "TYPE"

    invoke-direct {v0, v1, v5}, Lcom/redbend/vdm/DownloadDescriptor$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/DownloadDescriptor$Field;->TYPE:Lcom/redbend/vdm/DownloadDescriptor$Field;

    .line 19
    new-instance v0, Lcom/redbend/vdm/DownloadDescriptor$Field;

    const-string v1, "NAME"

    invoke-direct {v0, v1, v6}, Lcom/redbend/vdm/DownloadDescriptor$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/DownloadDescriptor$Field;->NAME:Lcom/redbend/vdm/DownloadDescriptor$Field;

    .line 21
    new-instance v0, Lcom/redbend/vdm/DownloadDescriptor$Field;

    const-string v1, "VERSION"

    invoke-direct {v0, v1, v7}, Lcom/redbend/vdm/DownloadDescriptor$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/DownloadDescriptor$Field;->VERSION:Lcom/redbend/vdm/DownloadDescriptor$Field;

    .line 23
    new-instance v0, Lcom/redbend/vdm/DownloadDescriptor$Field;

    const-string v1, "VENDOR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/DownloadDescriptor$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/DownloadDescriptor$Field;->VENDOR:Lcom/redbend/vdm/DownloadDescriptor$Field;

    .line 25
    new-instance v0, Lcom/redbend/vdm/DownloadDescriptor$Field;

    const-string v1, "DESCRIPTION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/DownloadDescriptor$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/DownloadDescriptor$Field;->DESCRIPTION:Lcom/redbend/vdm/DownloadDescriptor$Field;

    .line 27
    new-instance v0, Lcom/redbend/vdm/DownloadDescriptor$Field;

    const-string v1, "INSTALL_NOTIFY_URI"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/DownloadDescriptor$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/DownloadDescriptor$Field;->INSTALL_NOTIFY_URI:Lcom/redbend/vdm/DownloadDescriptor$Field;

    .line 30
    new-instance v0, Lcom/redbend/vdm/DownloadDescriptor$Field;

    const-string v1, "NEXT_URL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/DownloadDescriptor$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/DownloadDescriptor$Field;->NEXT_URL:Lcom/redbend/vdm/DownloadDescriptor$Field;

    .line 32
    new-instance v0, Lcom/redbend/vdm/DownloadDescriptor$Field;

    const-string v1, "INFO_URL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/DownloadDescriptor$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/DownloadDescriptor$Field;->INFO_URL:Lcom/redbend/vdm/DownloadDescriptor$Field;

    .line 34
    new-instance v0, Lcom/redbend/vdm/DownloadDescriptor$Field;

    const-string v1, "ICON_URI"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/DownloadDescriptor$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/DownloadDescriptor$Field;->ICON_URI:Lcom/redbend/vdm/DownloadDescriptor$Field;

    .line 36
    new-instance v0, Lcom/redbend/vdm/DownloadDescriptor$Field;

    const-string v1, "INSTALL_PARAM"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/DownloadDescriptor$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/DownloadDescriptor$Field;->INSTALL_PARAM:Lcom/redbend/vdm/DownloadDescriptor$Field;

    .line 38
    new-instance v0, Lcom/redbend/vdm/DownloadDescriptor$Field;

    const-string v1, "COUNT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/DownloadDescriptor$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/DownloadDescriptor$Field;->COUNT:Lcom/redbend/vdm/DownloadDescriptor$Field;

    .line 11
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/redbend/vdm/DownloadDescriptor$Field;

    sget-object v1, Lcom/redbend/vdm/DownloadDescriptor$Field;->SIZE:Lcom/redbend/vdm/DownloadDescriptor$Field;

    aput-object v1, v0, v3

    sget-object v1, Lcom/redbend/vdm/DownloadDescriptor$Field;->OBJECT_URI:Lcom/redbend/vdm/DownloadDescriptor$Field;

    aput-object v1, v0, v4

    sget-object v1, Lcom/redbend/vdm/DownloadDescriptor$Field;->TYPE:Lcom/redbend/vdm/DownloadDescriptor$Field;

    aput-object v1, v0, v5

    sget-object v1, Lcom/redbend/vdm/DownloadDescriptor$Field;->NAME:Lcom/redbend/vdm/DownloadDescriptor$Field;

    aput-object v1, v0, v6

    sget-object v1, Lcom/redbend/vdm/DownloadDescriptor$Field;->VERSION:Lcom/redbend/vdm/DownloadDescriptor$Field;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/redbend/vdm/DownloadDescriptor$Field;->VENDOR:Lcom/redbend/vdm/DownloadDescriptor$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/redbend/vdm/DownloadDescriptor$Field;->DESCRIPTION:Lcom/redbend/vdm/DownloadDescriptor$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/redbend/vdm/DownloadDescriptor$Field;->INSTALL_NOTIFY_URI:Lcom/redbend/vdm/DownloadDescriptor$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/redbend/vdm/DownloadDescriptor$Field;->NEXT_URL:Lcom/redbend/vdm/DownloadDescriptor$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/redbend/vdm/DownloadDescriptor$Field;->INFO_URL:Lcom/redbend/vdm/DownloadDescriptor$Field;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/redbend/vdm/DownloadDescriptor$Field;->ICON_URI:Lcom/redbend/vdm/DownloadDescriptor$Field;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/redbend/vdm/DownloadDescriptor$Field;->INSTALL_PARAM:Lcom/redbend/vdm/DownloadDescriptor$Field;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/redbend/vdm/DownloadDescriptor$Field;->COUNT:Lcom/redbend/vdm/DownloadDescriptor$Field;

    aput-object v2, v0, v1

    sput-object v0, Lcom/redbend/vdm/DownloadDescriptor$Field;->$VALUES:[Lcom/redbend/vdm/DownloadDescriptor$Field;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/redbend/vdm/DownloadDescriptor$Field;
    .locals 1
    .parameter "name"

    .prologue
    .line 11
    const-class v0, Lcom/redbend/vdm/DownloadDescriptor$Field;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/redbend/vdm/DownloadDescriptor$Field;

    return-object v0
.end method

.method public static values()[Lcom/redbend/vdm/DownloadDescriptor$Field;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/redbend/vdm/DownloadDescriptor$Field;->$VALUES:[Lcom/redbend/vdm/DownloadDescriptor$Field;

    invoke-virtual {v0}, [Lcom/redbend/vdm/DownloadDescriptor$Field;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/redbend/vdm/DownloadDescriptor$Field;

    return-object v0
.end method
