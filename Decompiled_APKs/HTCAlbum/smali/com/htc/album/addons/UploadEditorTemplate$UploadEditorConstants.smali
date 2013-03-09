.class public Lcom/htc/album/addons/UploadEditorTemplate$UploadEditorConstants;
.super Ljava/lang/Object;
.source "UploadEditorTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/UploadEditorTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UploadEditorConstants"
.end annotation


# static fields
.field public static final KEY_DISABLE_TAG:Ljava/lang/String; = "disable_tag"

.field public static final KEY_IMAGE_DATAPATH:Ljava/lang/String; = "datapath"

.field public static final KEY_IMAGE_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final KEY_IMAGE_MIMETYPE:Ljava/lang/String; = "mimeType"

.field public static final KEY_IMAGE_TITLE:Ljava/lang/String; = "title"

.field public static final KEY_IMAGE_URI:Ljava/lang/String; = "uri"

.field public static final KEY_SERVICE:Ljava/lang/String; = "service"

.field public static final KEY_SINGLE_SHARE:Ljava/lang/String; = "singleShare"

.field public static final KEY_TAGS:Ljava/lang/String; = "tags"

.field public static final KEY_UPLOAD_MODE:Ljava/lang/String; = "upload_mode"

.field public static final KEY_WRAPPER_PHOTO:Ljava/lang/String; = "WrapperPhoto"

.field public static final MODE_UPLOAD_CHS_CUSTOMER:I = 0x1016

.field public static final MODE_UPLOAD_FACEBOOK:I = 0x100

.field public static final MODE_UPLOAD_FLICKR:I = 0x200

.field public static final MODE_UPLOAD_LOCAL:I = 0x0

.field public static final MODE_UPLOAD_ONLINE:I = 0x1

.field public static final MSG_HIDE_EDITOR:I = 0x20

.field public static final MSG_INIT_FIRST_ITEM:I = 0x50

.field public static final MSG_LOADING_END:I = 0x40

.field public static final MSG_LOADING_START:I = 0x30

.field public static final MSG_SHOW_EDITOR:I = 0x10

.field public static final TAG_RESULT_OK:I = 0x88b9

.field public static final TIME_DISAPPEAR:I = 0x1f4

.field public static final UI_FLYER_STYLE:Z


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/UploadEditorTemplate;


# direct methods
.method public constructor <init>(Lcom/htc/album/addons/UploadEditorTemplate;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/htc/album/addons/UploadEditorTemplate$UploadEditorConstants;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
