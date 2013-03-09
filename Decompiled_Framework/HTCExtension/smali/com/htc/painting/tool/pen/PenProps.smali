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

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-class v0, Lcom/htc/painting/tool/pen/PenProps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/painting/tool/pen/PenProps;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    invoke-direct {v0}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;-><init>()V

    sput-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/painting/tool/pen/PenProps;->mDefaultMap:Ljava/util/Map;

    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_pen_name"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "String"

    invoke-direct {v2, v3, v4}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_version"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "int"

    invoke-direct {v2, v3, v4}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_pen_classname"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "String"

    invoke-direct {v2, v3, v4}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_app_packagename"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "String"

    invoke-direct {v2, v3, v4}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_flags"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "int"

    invoke-direct {v2, v3, v4}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mDefaultMap:Ljava/util/Map;

    const-string v1, "_flags"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_display_name_resid"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "int"

    invoke-direct {v2, v3, v4}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_thumbnail_resid"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "int"

    invoke-direct {v2, v3, v5}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_background_resid"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "int"

    invoke-direct {v2, v3, v5}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_pen_disable_image_resid"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "int"

    invoke-direct {v2, v3, v5}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_width_default"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "float"

    invoke-direct {v2, v3, v4}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mDefaultMap:Ljava/util/Map;

    const-string v1, "_width_default"

    const/high16 v2, 0x4040

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_width_adjustable"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "boolean"

    invoke-direct {v2, v3, v4}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mDefaultMap:Ljava/util/Map;

    const-string v1, "_width_adjustable"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_width_min"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "float"

    invoke-direct {v2, v3, v4}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mDefaultMap:Ljava/util/Map;

    const-string v1, "_width_min"

    const/high16 v2, 0x3f80

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_width_max"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "float"

    invoke-direct {v2, v3, v4}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mDefaultMap:Ljava/util/Map;

    const-string v1, "_width_max"

    const/high16 v2, 0x41a0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_fixed_width_array"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "float[]"

    invoke-direct {v2, v3, v5}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_color_default"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "int"

    invoke-direct {v2, v3, v4}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mDefaultMap:Ljava/util/Map;

    const-string v1, "_color_default"

    const/high16 v2, -0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_color_adjustable"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "boolean"

    invoke-direct {v2, v3, v4}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mDefaultMap:Ljava/util/Map;

    const-string v1, "_color_adjustable"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_supported_color_array"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "int[]"

    invoke-direct {v2, v3, v5}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_transparency_alpha_default"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "int"

    invoke-direct {v2, v3, v4}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mDefaultMap:Ljava/util/Map;

    const-string v1, "_transparency_alpha_default"

    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    const-string v1, "_transparency_adjustable"

    new-instance v2, Lcom/htc/painting/tool/pen/PropertyConstraint;

    const-string v3, "boolean"

    invoke-direct {v2, v3, v4}, Lcom/htc/painting/tool/pen/PropertyConstraint;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->put(Ljava/lang/String;Lcom/htc/painting/tool/pen/IPropertyConstraint;)V

    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mDefaultMap:Ljava/util/Map;

    const-string v1, "_transparency_adjustable"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/htc/painting/tool/pen/PenProps;->mDefaultMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/htc/painting/tool/pen/PenProps;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/htc/painting/tool/pen/PenProps;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/painting/tool/pen/PenProps;->init([B)V

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/htc/painting/tool/pen/PenProps;->init([B)V

    return-void
.end method

.method private getMap([B)Ljava/util/Map;
    .locals 6
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

    const/4 v3, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/HashMap;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private init([B)V
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/painting/tool/pen/PenProps;->getMap([B)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    goto :goto_0
.end method

.method private typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V
    .locals 6

    const-string v4, "<null>"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/painting/tool/pen/PenProps;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    return-void
.end method

.method private typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but value was a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".  The default value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " was returned."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/painting/tool/pen/PenProps;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/htc/painting/tool/pen/PenProps;->TAG:Ljava/lang/String;

    const-string v2, "Attempt to cast generated internal exception:"

    invoke-static {v1, v2, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

    iget-object v8, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sget-object v8, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    invoke-virtual {v8, v0}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->getMissingKeys([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    array-length v8, v6

    if-lez v8, :cond_1

    const-string v7, "Missing keys:"

    move-object v1, v6

    array-length v5, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v3, v1, v2

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

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v8, Lcom/htc/painting/tool/pen/PenException;

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    invoke-direct {v8, v7, v9}, Lcom/htc/painting/tool/pen/PenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    :cond_1
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

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

    const/4 v2, 0x0

    instance-of v3, p1, Lcom/htc/painting/tool/pen/PenProps;

    if-eqz v3, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/htc/painting/tool/pen/PenProps;

    invoke-virtual {p0}, Lcom/htc/painting/tool/pen/PenProps;->size()I

    move-result v3

    invoke-virtual {v1}, Lcom/htc/painting/tool/pen/PenProps;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/htc/painting/tool/pen/PenProps;->size()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/htc/painting/tool/pen/PenProps;->toByteArray()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/painting/tool/pen/PenProps;->getMap([B)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/tool/pen/PenProps;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 7

    iget-object v1, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return p2

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

    :catch_0
    move-exception v6

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

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v3, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v3, v4

    goto :goto_0

    :cond_1
    :try_start_0
    move-object v0, v2

    check-cast v0, [Z

    move-object v3, v0

    check-cast v3, [Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "byte[]"

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/htc/painting/tool/pen/PenProps;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    goto :goto_0
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/tool/pen/PenProps;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getByte(Ljava/lang/String;B)Ljava/lang/Byte;
    .locals 6

    iget-object v0, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    check-cast v2, Ljava/lang/Byte;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v3, "Byte"

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/painting/tool/pen/PenProps;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    goto :goto_0
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v3, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v3, v4

    goto :goto_0

    :cond_1
    :try_start_0
    move-object v0, v2

    check-cast v0, [B

    move-object v3, v0

    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "byte[]"

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/htc/painting/tool/pen/PenProps;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    goto :goto_0
.end method

.method public getChar(Ljava/lang/String;)C
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/tool/pen/PenProps;->getChar(Ljava/lang/String;C)C

    move-result v0

    return v0
.end method

.method public getChar(Ljava/lang/String;C)C
    .locals 7

    iget-object v1, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return p2

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

    :catch_0
    move-exception v6

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

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v3, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v3, v4

    goto :goto_0

    :cond_1
    :try_start_0
    move-object v0, v2

    check-cast v0, [C

    move-object v3, v0

    check-cast v3, [C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "char[]"

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/htc/painting/tool/pen/PenProps;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    goto :goto_0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/painting/tool/pen/PenProps;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 7

    iget-object v1, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-wide p2

    :cond_1
    iget-object v1, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Double;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    :catch_0
    move-exception v6

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

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [D

    move-object v3, v0

    check-cast v3, [D
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "double[]"

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/htc/painting/tool/pen/PenProps;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/tool/pen/PenProps;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 7

    iget-object v1, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    iget-object v1, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Float;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    :catch_0
    move-exception v6

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

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v3, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v3, v4

    goto :goto_0

    :cond_1
    :try_start_0
    move-object v0, v2

    check-cast v0, [F

    move-object v3, v0

    check-cast v3, [F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "float[]"

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/htc/painting/tool/pen/PenProps;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/tool/pen/PenProps;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 7

    iget-object v1, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    iget-object v1, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    :catch_0
    move-exception v6

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

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v3, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v3, v4

    goto :goto_0

    :cond_1
    :try_start_0
    move-object v0, v2

    check-cast v0, [I

    move-object v3, v0

    check-cast v3, [I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "int[]"

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/htc/painting/tool/pen/PenProps;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/painting/tool/pen/PenProps;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 7

    iget-object v1, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-wide p2

    :cond_1
    iget-object v1, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Long;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    :catch_0
    move-exception v6

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

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v3, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v3, v4

    goto :goto_0

    :cond_1
    :try_start_0
    move-object v0, v2

    check-cast v0, [J

    move-object v3, v0

    check-cast v3, [J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "long[]"

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/htc/painting/tool/pen/PenProps;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    goto :goto_0
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/tool/pen/PenProps;->getShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public getShort(Ljava/lang/String;S)S
    .locals 7

    iget-object v1, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return p2

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

    :catch_0
    move-exception v6

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

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v3, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v3, v4

    goto :goto_0

    :cond_1
    :try_start_0
    move-object v0, v2

    check-cast v0, [S

    move-object v3, v0

    check-cast v3, [S
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "short[]"

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/htc/painting/tool/pen/PenProps;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v3, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    :try_start_0
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "String"

    invoke-direct {p0, p1, v1, v3, v0}, Lcom/htc/painting/tool/pen/PenProps;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v1, v2

    goto :goto_0
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v3, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v3, v4

    goto :goto_0

    :cond_1
    :try_start_0
    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    check-cast v3, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "String[]"

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/htc/painting/tool/pen/PenProps;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    goto :goto_0
.end method

.method protected put(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    sget-object v0, Lcom/htc/painting/tool/pen/PenProps;->mPct:Lcom/htc/painting/tool/pen/PropertyConstraintTable;

    invoke-virtual {v0, p1, p2}, Lcom/htc/painting/tool/pen/PropertyConstraintTable;->isCorrectType(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

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

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    :cond_1
    iget-object v0, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public putBooleanArray(Ljava/lang/String;[Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public putByte(Ljava/lang/String;B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public putByteArray(Ljava/lang/String;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public putChar(Ljava/lang/String;C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public putCharArray(Ljava/lang/String;[C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public putDoubleArray(Ljava/lang/String;[D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public putFloatArray(Ljava/lang/String;[F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public putIntArray(Ljava/lang/String;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public putLongArray(Ljava/lang/String;[J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public putShort(Ljava/lang/String;S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public putShortArray(Ljava/lang/String;[S)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/painting/tool/pen/PenProps;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public removeIfExist(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

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

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    if-nez v3, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v3, p0, Lcom/htc/painting/tool/pen/PenProps;->mMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v4

    goto :goto_0
.end method
