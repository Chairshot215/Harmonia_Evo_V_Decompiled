.class public Lcom/htc/painting/tool/pen/PenProps;
.super Ljava/lang/Object;
.source "PenProps.java"


# static fields
.field public static final FLAG_IS_DEFAULT_PEN:I = 0x8

.field public static final FLAG_IS_ERASER:I = 0x1

.field public static final FLAG_IS_RENDER_SUPPLIER:I = 0x4

.field public static final FLAG_IS_SKIA_SIMPLE_PEN:I = 0x2

.field public static final KEY_APP_PACKAGENAME:Ljava/lang/String; = "_app_packagename"

.field public static final KEY_BACKGROUND_RESID:Ljava/lang/String; = "_background_resid"

.field public static final KEY_COLOR_ADJUSTABLE:Ljava/lang/String; = "_color_adjustable"

.field public static final KEY_COLOR_DEFAULT:Ljava/lang/String; = "_color_default"

.field public static final KEY_DISPLAY_NAME_RESID:Ljava/lang/String; = "_display_name_resid"

.field public static final KEY_FIXED_WIDTH_ARRAY:Ljava/lang/String; = "_fixed_width_array"

.field public static final KEY_FLAGS:Ljava/lang/String; = "_flags"

.field public static final KEY_PEN_CLASSNAME:Ljava/lang/String; = "_pen_classname"

.field public static final KEY_PEN_DISABLE_IMAGE_RESID:Ljava/lang/String; = "_pen_disable_image_resid"

.field public static final KEY_PEN_NAME:Ljava/lang/String; = "_pen_name"

.field public static final KEY_SUPPORTED_COLOR_ARRAY:Ljava/lang/String; = "_supported_color_array"

.field public static final KEY_THUMBNAIL_RESID:Ljava/lang/String; = "_thumbnail_resid"

.field public static final KEY_TRANSPARENCY_ADJUSTABLE:Ljava/lang/String; = "_transparency_adjustable"

.field public static final KEY_TRANSPARENCY_ALPHA_DEFAULT:Ljava/lang/String; = "_transparency_alpha_default"

.field public static final KEY_VERSION:Ljava/lang/String; = "_version"

.field public static final KEY_WIDTH_ADJUSTABLE:Ljava/lang/String; = "_width_adjustable"

.field public static final KEY_WIDTH_DEFAULT:Ljava/lang/String; = "_width_default"

.field public static final KEY_WIDTH_MAX:Ljava/lang/String; = "_width_max"

.field public static final KEY_WIDTH_MIN:Ljava/lang/String; = "_width_min"

.field private static final TAG:Ljava/lang/String;

.field protected static mDefaultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field protected static mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;


# instance fields
.field protected mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 23
    const-class v0, Lcom/htc/painting/tool/pen/PenProps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/painting/tool/pen/PenProps;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    invoke-direct {v0}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;-><init>()V

    sput-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/painting/tool/pen/PenProps;->mDefaultMap:Ljava/util/Map;

    .line 49
    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_pen_name"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "String"

    invoke-direct {v2, v3, v4}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    .line 59
    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_version"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "int"

    invoke-direct {v2, v3, v4}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    .line 67
    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_pen_classname"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "String"

    invoke-direct {v2, v3, v4}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    .line 75
    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_app_packagename"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "String"

    invoke-direct {v2, v3, v4}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    .line 84
    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_flags"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "int"

    invoke-direct {v2, v3, v4}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    .line 85
    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mDefaultMap:Ljava/util/Map;

    const-string v1, "_flags"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_display_name_resid"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "int"

    invoke-direct {v2, v3, v4}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    .line 125
    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_thumbnail_resid"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "int"

    invoke-direct {v2, v3, v5}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    .line 133
    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_background_resid"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "int"

    invoke-direct {v2, v3, v5}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    .line 141
    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_pen_disable_image_resid"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "int"

    invoke-direct {v2, v3, v5}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    .line 150
    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_width_default"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "float"

    invoke-direct {v2, v3, v4}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    .line 151
    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mDefaultMap:Ljava/util/Map;

    const-string v1, "_width_default"

    const/high16 v2, 0x4040

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_width_adjustable"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "boolean"

    invoke-direct {v2, v3, v4}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    .line 161
    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mDefaultMap:Ljava/util/Map;

    const-string v1, "_width_adjustable"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_width_min"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "float"

    invoke-direct {v2, v3, v4}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    .line 171
    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mDefaultMap:Ljava/util/Map;

    const-string v1, "_width_min"

    const/high16 v2, 0x3f80

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_width_max"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "float"

    invoke-direct {v2, v3, v4}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    .line 181
    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mDefaultMap:Ljava/util/Map;

    const-string v1, "_width_max"

    const/high16 v2, 0x41a0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_fixed_width_array"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "float[]"

    invoke-direct {v2, v3, v5}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    .line 200
    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_color_default"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "int"

    invoke-direct {v2, v3, v4}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    .line 201
    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mDefaultMap:Ljava/util/Map;

    const-string v1, "_color_default"

    const/high16 v2, -0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_color_adjustable"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "boolean"

    invoke-direct {v2, v3, v4}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    .line 211
    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mDefaultMap:Ljava/util/Map;

    const-string v1, "_color_adjustable"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_supported_color_array"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "int[]"

    invoke-direct {v2, v3, v5}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    .line 230
    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_transparency_alpha_default"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "int"

    invoke-direct {v2, v3, v4}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    .line 231
    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mDefaultMap:Ljava/util/Map;

    const-string v1, "_transparency_alpha_default"

    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_transparency_adjustable"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "boolean"

    invoke-direct {v2, v3, v4}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    .line 241
    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mDefaultMap:Ljava/util/Map;

    const-string v1, "_transparency_adjustable"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    .line 249
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/htc/painting/tool/pen/PenProps;->mDefaultMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    .line 250
    return-void
.end method

.method public constructor <init>(Lcom/htc/painting/tool/pen/PenProps;)V
    .locals 1
    .parameter "ppb"

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    .line 269
    if-nez p1, :cond_0

    .line 273
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-virtual {p1}, Lcom/htc/painting/tool/pen/PenProps;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/painting/tool/pen/PenProps;->init([B)V

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "bProperties"

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    .line 259
    invoke-direct {p0, p1}, Lcom/htc/painting/tool/pen/PenProps;->init([B)V

    .line 260
    return-void
.end method

.method private getMap([B)Ljava/util/Map;
    .locals 6
    .parameter "bProperties"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    const/4 v3, 0x0

    .line 301
    .local v3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/io/Serializable;>;"
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 302
    .local v1, baos:Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 303
    .local v4, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/HashMap;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .end local v1           #baos:Ljava/io/ByteArrayInputStream;
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    :goto_0
    return-object v3

    .line 304
    :catch_0
    move-exception v2

    .line 305
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private init([B)V
    .locals 1
    .parameter "bProperties"

    .prologue
    .line 282
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/painting/tool/pen/PenProps;->getMap([B)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    goto :goto_0
.end method

.method private typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V
    .locals 6
    .parameter "key"
    .parameter "value"
    .parameter "className"
    .parameter "e"

    .prologue
    .line 329
    const-string v4, "<null>"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/painting/tool/pen/PenProps;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 330
    return-void
.end method

.method private typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V
    .locals 3
    .parameter "key"
    .parameter "value"
    .parameter "className"
    .parameter "defaultValue"
    .parameter "e"

    .prologue
    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "Key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v1, " expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string v1, " but value was a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string v1, ".  The default value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 322
    const-string v1, " was returned."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    sget-object v1, Lcom/htc/painting/tool/pen/PenProps;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    sget-object v1, Lcom/htc/painting/tool/pen/PenProps;->TAG:Ljava/lang/String;

    const-string v2, "Attempt to cast generated internal exception:"

    invoke-static {v1, v2, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    return-void
.end method


# virtual methods
.method public checkMissingKeyAndTypes()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    .prologue
    .line 339
    iget-object v8, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 340
    .local v4, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 342
    .local v0, allKeys:[Ljava/lang/String;
    sget-object v8, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    invoke-virtual {v8, v0}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->getMissingKeys([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 345
    .local v6, missingKeys:[Ljava/lang/String;
    if-eqz v6, :cond_1

    array-length v8, v6

    if-lez v8, :cond_1

    .line 346
    const-string v7, "Missing keys:"

    .line 347
    .local v7, str:Ljava/lang/String;
    move-object v1, v6

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v3, v1, v2

    .line 348
    .local v3, key:Ljava/lang/String;
    sget-object v8, Lcom/htc/painting/tool/pen/PenProps;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing key ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] with type["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    invoke-virtual {v10, v3}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->getKeyType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 347
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 351
    .end local v3           #key:Ljava/lang/String;
    :cond_0
    new-instance v8, Lcom/htc/painting/tool/pen/PenException;

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    invoke-direct {v8, v7, v9}, Lcom/htc/painting/tool/pen/PenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 354
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .end local v7           #str:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 365
    const/4 v0, 0x0

    .line 366
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"

    .prologue
    const/4 v2, 0x0

    .line 413
    instance-of v3, p1, Lcom/htc/painting/tool/pen/PenProps;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 415
    check-cast v1, Lcom/htc/painting/tool/pen/PenProps;

    .line 417
    .local v1, penProps:Lcom/htc/painting/tool/pen/PenProps;
    invoke-virtual {p0}, Lcom/htc/painting/tool/pen/PenProps;->size()I

    move-result v3

    invoke-virtual {v1}, Lcom/htc/painting/tool/pen/PenProps;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 429
    .end local v1           #penProps:Lcom/htc/painting/tool/pen/PenProps;
    :cond_0
    :goto_0
    return v2

    .line 421
    .restart local v1       #penProps:Lcom/htc/painting/tool/pen/PenProps;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/painting/tool/pen/PenProps;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 422
    const/4 v2, 0x1

    goto :goto_0

    .line 425
    :cond_2
    invoke-virtual {v1}, Lcom/htc/painting/tool/pen/PenProps;->toByteArray()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/painting/tool/pen/PenProps;->getMap([B)Ljava/util/Map;

    move-result-object v0

    .line 426
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/io/Serializable;>;"
    iget-object v2, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 441
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/tool/pen/PenProps;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 7
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 452
    iget-object v1, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 453
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 460
    .end local p2
    :goto_0
    return p2

    .line 457
    .restart local p2
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 458
    :catch_0
    move-exception v6

    .line 459
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Boolean"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/htc/painting/tool/pen/PenProps;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    goto :goto_0
.end method

.method public getBooleanArray(Ljava/lang/String;)[Z
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 732
    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v3, :cond_0

    move-object v3, v4

    .line 743
    :goto_0
    return-object v3

    .line 735
    :cond_0
    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 736
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_1

    move-object v3, v4

    .line 737
    goto :goto_0

    .line 740
    :cond_1
    :try_start_0
    move-object v0, v2

    check-cast v0, [Z

    move-object v3, v0

    check-cast v3, [Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 741
    :catch_0
    move-exception v1

    .line 742
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "byte[]"

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/htc/painting/tool/pen/PenProps;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 743
    goto :goto_0
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 1
    .parameter "key"

    .prologue
    .line 472
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/tool/pen/PenProps;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getByte(Ljava/lang/String;B)Ljava/lang/Byte;
    .locals 6
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 484
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 485
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 491
    .end local v2           #o:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 488
    .restart local v2       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v2, Ljava/lang/Byte;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 489
    :catch_0
    move-exception v5

    .line 490
    .local v5, e:Ljava/lang/ClassCastException;
    const-string v3, "Byte"

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/painting/tool/pen/PenProps;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 491
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    goto :goto_0
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 757
    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v3, :cond_0

    move-object v3, v4

    .line 768
    :goto_0
    return-object v3

    .line 760
    :cond_0
    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 761
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_1

    move-object v3, v4

    .line 762
    goto :goto_0

    .line 765
    :cond_1
    :try_start_0
    move-object v0, v2

    check-cast v0, [B

    move-object v3, v0

    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 766
    :catch_0
    move-exception v1

    .line 767
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "byte[]"

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/htc/painting/tool/pen/PenProps;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 768
    goto :goto_0
.end method

.method public getChar(Ljava/lang/String;)C
    .locals 1
    .parameter "key"

    .prologue
    .line 503
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/tool/pen/PenProps;->getChar(Ljava/lang/String;C)C

    move-result v0

    return v0
.end method

.method public getChar(Ljava/lang/String;C)C
    .locals 7
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 514
    iget-object v1, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 515
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 522
    .end local p2
    :goto_0
    return p2

    .line 519
    .restart local p2
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Character;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 520
    :catch_0
    move-exception v6

    .line 521
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Character"

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/htc/painting/tool/pen/PenProps;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    goto :goto_0
.end method

.method public getCharArray(Ljava/lang/String;)[C
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 807
    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v3, :cond_0

    move-object v3, v4

    .line 818
    :goto_0
    return-object v3

    .line 810
    :cond_0
    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 811
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_1

    move-object v3, v4

    .line 812
    goto :goto_0

    .line 815
    :cond_1
    :try_start_0
    move-object v0, v2

    check-cast v0, [C

    move-object v3, v0

    check-cast v3, [C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 816
    :catch_0
    move-exception v1

    .line 817
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "char[]"

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/htc/painting/tool/pen/PenProps;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 818
    goto :goto_0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .parameter "key"

    .prologue
    .line 670
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/painting/tool/pen/PenProps;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 7
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 682
    iget-object v1, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 693
    .end local p2
    :cond_0
    :goto_0
    return-wide p2

    .line 685
    .restart local p2
    :cond_1
    iget-object v1, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 686
    .local v3, o:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 690
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Double;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    .line 691
    :catch_0
    move-exception v6

    .line 692
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Double"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/htc/painting/tool/pen/PenProps;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    goto :goto_0
.end method

.method public getDoubleArray(Ljava/lang/String;)[D
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 906
    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 907
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 914
    :goto_0
    return-object v3

    .line 911
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [D

    move-object v3, v0

    check-cast v3, [D
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 912
    :catch_0
    move-exception v1

    .line 913
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "double[]"

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/htc/painting/tool/pen/PenProps;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 914
    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1
    .parameter "key"

    .prologue
    .line 635
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/tool/pen/PenProps;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 7
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 647
    iget-object v1, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 658
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 650
    .restart local p2
    :cond_1
    iget-object v1, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 651
    .local v3, o:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 655
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Float;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 656
    :catch_0
    move-exception v6

    .line 657
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Float"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/htc/painting/tool/pen/PenProps;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    goto :goto_0
.end method

.method public getFloatArray(Ljava/lang/String;)[F
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 882
    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v3, :cond_0

    move-object v3, v4

    .line 893
    :goto_0
    return-object v3

    .line 885
    :cond_0
    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 886
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_1

    move-object v3, v4

    .line 887
    goto :goto_0

    .line 890
    :cond_1
    :try_start_0
    move-object v0, v2

    check-cast v0, [F

    move-object v3, v0

    check-cast v3, [F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 891
    :catch_0
    move-exception v1

    .line 892
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "float[]"

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/htc/painting/tool/pen/PenProps;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 893
    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 565
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/tool/pen/PenProps;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 7
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 577
    iget-object v1, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 588
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 580
    .restart local p2
    :cond_1
    iget-object v1, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 581
    .local v3, o:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 585
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 586
    :catch_0
    move-exception v6

    .line 587
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Integer"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/htc/painting/tool/pen/PenProps;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    goto :goto_0
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 832
    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v3, :cond_0

    move-object v3, v4

    .line 843
    :goto_0
    return-object v3

    .line 835
    :cond_0
    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 836
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_1

    move-object v3, v4

    .line 837
    goto :goto_0

    .line 840
    :cond_1
    :try_start_0
    move-object v0, v2

    check-cast v0, [I

    move-object v3, v0

    check-cast v3, [I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 841
    :catch_0
    move-exception v1

    .line 842
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "int[]"

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/htc/painting/tool/pen/PenProps;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 843
    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .parameter "key"

    .prologue
    .line 600
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/painting/tool/pen/PenProps;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 7
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 612
    iget-object v1, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 623
    .end local p2
    :cond_0
    :goto_0
    return-wide p2

    .line 615
    .restart local p2
    :cond_1
    iget-object v1, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 616
    .local v3, o:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 620
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Long;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    .line 621
    :catch_0
    move-exception v6

    .line 622
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Long"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/htc/painting/tool/pen/PenProps;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    goto :goto_0
.end method

.method public getLongArray(Ljava/lang/String;)[J
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 857
    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v3, :cond_0

    move-object v3, v4

    .line 868
    :goto_0
    return-object v3

    .line 860
    :cond_0
    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 861
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_1

    move-object v3, v4

    .line 862
    goto :goto_0

    .line 865
    :cond_1
    :try_start_0
    move-object v0, v2

    check-cast v0, [J

    move-object v3, v0

    check-cast v3, [J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 866
    :catch_0
    move-exception v1

    .line 867
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "long[]"

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/htc/painting/tool/pen/PenProps;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 868
    goto :goto_0
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 1
    .parameter "key"

    .prologue
    .line 534
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/tool/pen/PenProps;->getShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public getShort(Ljava/lang/String;S)S
    .locals 7
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 545
    iget-object v1, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 546
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 553
    .end local p2
    :goto_0
    return p2

    .line 550
    .restart local p2
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Short;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 551
    :catch_0
    move-exception v6

    .line 552
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Short"

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/htc/painting/tool/pen/PenProps;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    goto :goto_0
.end method

.method public getShortArray(Ljava/lang/String;)[S
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 782
    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v3, :cond_0

    move-object v3, v4

    .line 793
    :goto_0
    return-object v3

    .line 785
    :cond_0
    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 786
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_1

    move-object v3, v4

    .line 787
    goto :goto_0

    .line 790
    :cond_1
    :try_start_0
    move-object v0, v2

    check-cast v0, [S

    move-object v3, v0

    check-cast v3, [S
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 791
    :catch_0
    move-exception v1

    .line 792
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "short[]"

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/htc/painting/tool/pen/PenProps;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 793
    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 707
    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v3, :cond_0

    move-object v1, v2

    .line 718
    :goto_0
    return-object v1

    .line 710
    :cond_0
    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 711
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_1

    move-object v1, v2

    .line 712
    goto :goto_0

    .line 715
    :cond_1
    :try_start_0
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v3, "String"

    invoke-direct {p0, p1, v1, v3, v0}, Lcom/htc/painting/tool/pen/PenProps;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v1, v2

    .line 718
    goto :goto_0
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 928
    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v3, :cond_0

    move-object v3, v4

    .line 939
    :goto_0
    return-object v3

    .line 931
    :cond_0
    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 932
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_1

    move-object v3, v4

    .line 933
    goto :goto_0

    .line 936
    :cond_1
    :try_start_0
    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    check-cast v3, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 937
    :catch_0
    move-exception v1

    .line 938
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "String[]"

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/htc/painting/tool/pen/PenProps;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 939
    goto :goto_0
.end method

.method protected put(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 3
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    .prologue
    .line 967
    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    invoke-virtual {v0, p1, p2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->isCorrectType(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 968
    new-instance v0, Lcom/htc/painting/tool/pen/PenException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre-define key ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] shall use type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    invoke-virtual {v2, p1}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->getKeyType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/htc/painting/tool/pen/PenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 971
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 972
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    .line 973
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    .prologue
    .line 985
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 986
    return-void
.end method

.method public putBooleanArray(Ljava/lang/String;[Z)V
    .locals 0
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    .prologue
    .line 1093
    invoke-virtual {p0, p1, p2}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1094
    return-void
.end method

.method public putByte(Ljava/lang/String;B)V
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    .prologue
    .line 997
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 998
    return-void
.end method

.method public putByteArray(Ljava/lang/String;[B)V
    .locals 0
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    .prologue
    .line 1105
    invoke-virtual {p0, p1, p2}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1106
    return-void
.end method

.method public putChar(Ljava/lang/String;C)V
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    .prologue
    .line 1009
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1010
    return-void
.end method

.method public putCharArray(Ljava/lang/String;[C)V
    .locals 0
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    .prologue
    .line 1129
    invoke-virtual {p0, p1, p2}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1130
    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    .prologue
    .line 1069
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1070
    return-void
.end method

.method public putDoubleArray(Ljava/lang/String;[D)V
    .locals 0
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    .prologue
    .line 1177
    invoke-virtual {p0, p1, p2}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1178
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    .prologue
    .line 1057
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1058
    return-void
.end method

.method public putFloatArray(Ljava/lang/String;[F)V
    .locals 0
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    .prologue
    .line 1165
    invoke-virtual {p0, p1, p2}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1166
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    .prologue
    .line 1033
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1034
    return-void
.end method

.method public putIntArray(Ljava/lang/String;[I)V
    .locals 0
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    .prologue
    .line 1141
    invoke-virtual {p0, p1, p2}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1142
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    .prologue
    .line 1045
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1046
    return-void
.end method

.method public putLongArray(Ljava/lang/String;[J)V
    .locals 0
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    .prologue
    .line 1153
    invoke-virtual {p0, p1, p2}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1154
    return-void
.end method

.method public putShort(Ljava/lang/String;S)V
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    .prologue
    .line 1021
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1022
    return-void
.end method

.method public putShortArray(Ljava/lang/String;[S)V
    .locals 0
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    .prologue
    .line 1117
    invoke-virtual {p0, p1, p2}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1118
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    .prologue
    .line 1081
    invoke-virtual {p0, p1, p2}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1082
    return-void
.end method

.method public putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    .prologue
    .line 1189
    invoke-virtual {p0, p1, p2}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1190
    return-void
.end method

.method public removeIfExist(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 950
    iget-object v0, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 953
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 397
    const/4 v0, 0x0

    .line 398
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0
.end method

.method public toByteArray()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 377
    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v3, :cond_0

    move-object v3, v4

    .line 387
    :goto_0
    return-object v3

    .line 379
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 381
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 382
    .local v2, oos:Ljava/io/ObjectOutputStream;
    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    goto :goto_0

    .line 383
    .end local v2           #oos:Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v1

    .line 384
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v4

    .line 385
    goto :goto_0
.end method
