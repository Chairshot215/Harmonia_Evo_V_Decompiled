.class public interface abstract annotation Lcom/google/appinventor/components/annotations/DesignerProperty;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "text"
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final PROPERTY_TYPE_ASSET:Ljava/lang/String; = "asset"

.field public static final PROPERTY_TYPE_BLUETOOTHCLIENT:Ljava/lang/String; = "BluetoothClient"

.field public static final PROPERTY_TYPE_BOOLEAN:Ljava/lang/String; = "boolean"

.field public static final PROPERTY_TYPE_COLOR:Ljava/lang/String; = "color"

.field public static final PROPERTY_TYPE_COMPONENT:Ljava/lang/String; = "component"

.field public static final PROPERTY_TYPE_FLOAT:Ljava/lang/String; = "float"

.field public static final PROPERTY_TYPE_INTEGER:Ljava/lang/String; = "integer"

.field public static final PROPERTY_TYPE_LEGO_NXT_GENERATED_COLOR:Ljava/lang/String; = "lego_nxt_generated_color"

.field public static final PROPERTY_TYPE_LEGO_NXT_SENSOR_PORT:Ljava/lang/String; = "lego_nxt_sensor_port"

.field public static final PROPERTY_TYPE_NON_NEGATIVE_FLOAT:Ljava/lang/String; = "non_negative_float"

.field public static final PROPERTY_TYPE_NON_NEGATIVE_INTEGER:Ljava/lang/String; = "non_negative_integer"

.field public static final PROPERTY_TYPE_SCREEN_ORIENTATION:Ljava/lang/String; = "screen_orientation"

.field public static final PROPERTY_TYPE_STRING:Ljava/lang/String; = "string"

.field public static final PROPERTY_TYPE_TEXT:Ljava/lang/String; = "text"

.field public static final PROPERTY_TYPE_TEXTALIGNMENT:Ljava/lang/String; = "textalignment"

.field public static final PROPERTY_TYPE_TYPEFACE:Ljava/lang/String; = "typeface"


# virtual methods
.method public abstract defaultValue()Ljava/lang/String;
.end method

.method public abstract editorType()Ljava/lang/String;
.end method
