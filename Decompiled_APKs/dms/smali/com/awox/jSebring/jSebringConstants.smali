.class public interface abstract Lcom/awox/jSebring/jSebringConstants;
.super Ljava/lang/Object;
.source "jSebringConstants.java"


# static fields
.field public static final MediaServerManagerError_CannotConnect:I

.field public static final MediaServerManagerError_InvalidValue:I

.field public static final MediaServerManagerError_None:I

.field public static final MediaServerManagerError_NotFound:I

.field public static final MediaServerManagerError_NotImplemented:I

.field public static final MediaServerManagerError_Timeout:I

.field public static final kawMediaTypeShared_Error:I

.field public static final kawMediaTypeShared_Music:I

.field public static final kawMediaTypeShared_Picture:I

.field public static final kawMediaTypeShared_Video:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManagerError_None_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->MediaServerManagerError_None:I

    .line 13
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManagerError_CannotConnect_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->MediaServerManagerError_CannotConnect:I

    .line 14
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManagerError_Timeout_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->MediaServerManagerError_Timeout:I

    .line 15
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManagerError_InvalidValue_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->MediaServerManagerError_InvalidValue:I

    .line 16
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManagerError_NotImplemented_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->MediaServerManagerError_NotImplemented:I

    .line 17
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManagerError_NotFound_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->MediaServerManagerError_NotFound:I

    .line 18
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->kawMediaTypeShared_Error_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->kawMediaTypeShared_Error:I

    .line 19
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->kawMediaTypeShared_Video_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->kawMediaTypeShared_Video:I

    .line 20
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->kawMediaTypeShared_Music_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->kawMediaTypeShared_Music:I

    .line 21
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->kawMediaTypeShared_Picture_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->kawMediaTypeShared_Picture:I

    return-void
.end method
