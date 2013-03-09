.class Lcom/htc/widget/CarouselSetting;
.super Ljava/lang/Object;
.source "CarouselSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/CarouselSetting$BaseTaskColumns;
    }
.end annotation


# static fields
.field static final TAKCOLUMNNAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "task_tag"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "task_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "alternative_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "intent"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "res_package"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "icon_resource"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "selected_icon_resource"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "overlay_resource"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "task_order"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "is_host"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "tab_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "count_text"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "count_text_visible"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "is_removable"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "is_updated"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/widget/CarouselSetting;->TAKCOLUMNNAMES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method
