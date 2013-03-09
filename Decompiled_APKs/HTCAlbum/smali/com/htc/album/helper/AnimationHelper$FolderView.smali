.class public Lcom/htc/album/helper/AnimationHelper$FolderView;
.super Ljava/lang/Object;
.source "AnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/AnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/AnimationHelper$FolderView$FolderViewItem;
    }
.end annotation


# static fields
.field public static final COLLAPSE_ALPHA_END:I = 0xff

.field public static final COLLAPSE_ALPHA_START:I = 0x5

.field public static final COLLAPSE_POSITION_END_Z:I = 0x0

.field public static final COLLAPSE_POSITION_START_Z:I = -0x12c

.field public static final DURATION:I = 0x2bc

.field public static final EXPAND_ALPHA_END:I = 0x5

.field public static final EXPAND_ALPHA_START:I = 0xff

.field public static final EXPAND_POSITION_END_Z:I = -0x12c

.field public static final EXPAND_POSITION_START_Z:I = 0x0

.field public static final KEY_ITEM_CLICKED_INDEX:Ljava/lang/String; = "folder_animation_click_index"

.field public static final KEY_ITEM_CLICKED_POSITION:Ljava/lang/String; = "folder_animation_click_pos"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method
