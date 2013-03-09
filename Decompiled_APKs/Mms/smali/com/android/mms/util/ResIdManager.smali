.class public abstract Lcom/android/mms/util/ResIdManager;
.super Ljava/lang/Object;
.source "ResIdManager.java"


# static fields
.field public static final TITLE_1_BALL:I = 0x3ea

.field public static final TITLE_1_BUTTON_RIGHT_2:I = 0x3eb

.field public static final TITLE_1_DROPDOWN:I = 0x3e9

.field public static final TITLE_1_IMAGE_1X1:I = 0x3ed

.field public static final TITLE_1_TXT_LEFT:I = 0x3ec

.field public static final TITLE_2_BTN_1X1:I = 0x7d1

.field public static final TITLE_5_BUTTON_LAYOUT_1:I = 0x1389

.field private static mInstance:Lcom/android/mms/util/ResIdManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/util/ResIdManager;->mInstance:Lcom/android/mms/util/ResIdManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/mms/util/ResIdManager;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/android/mms/util/ResIdManager;->mInstance:Lcom/android/mms/util/ResIdManager;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Lcom/android/mms/util/ResIdManager;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/android/mms/util/ResIdManager;->mInstance:Lcom/android/mms/util/ResIdManager;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/android/mms/util/ViewManager;

    invoke-direct {v0}, Lcom/android/mms/util/ViewManager;-><init>()V

    sput-object v0, Lcom/android/mms/util/ResIdManager;->mInstance:Lcom/android/mms/util/ResIdManager;

    .line 31
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_1
    sget-object v0, Lcom/android/mms/util/ResIdManager;->mInstance:Lcom/android/mms/util/ResIdManager;

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public ResIdManager()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public abstract findViewById(ILandroid/view/View;)Landroid/view/View;
.end method
