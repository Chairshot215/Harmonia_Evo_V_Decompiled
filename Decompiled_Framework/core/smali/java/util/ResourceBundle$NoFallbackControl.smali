.class Ljava/util/ResourceBundle$NoFallbackControl;
.super Ljava/util/ResourceBundle$Control;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoFallbackControl"
.end annotation


# static fields
.field static final NOFALLBACK_FORMAT_CLASS_CONTROL:Ljava/util/ResourceBundle$Control;

.field static final NOFALLBACK_FORMAT_DEFAULT_CONTROL:Ljava/util/ResourceBundle$Control;

.field static final NOFALLBACK_FORMAT_PROPERTIES_CONTROL:Ljava/util/ResourceBundle$Control;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ResourceBundle$NoFallbackControl;

    sget-object v1, Ljava/util/ResourceBundle$NoFallbackControl;->JAVAPROPERTIES:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$NoFallbackControl;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->NOFALLBACK_FORMAT_PROPERTIES_CONTROL:Ljava/util/ResourceBundle$Control;

    new-instance v0, Ljava/util/ResourceBundle$NoFallbackControl;

    sget-object v1, Ljava/util/ResourceBundle$NoFallbackControl;->JAVACLASS:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$NoFallbackControl;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->NOFALLBACK_FORMAT_CLASS_CONTROL:Ljava/util/ResourceBundle$Control;

    new-instance v0, Ljava/util/ResourceBundle$NoFallbackControl;

    sget-object v1, Ljava/util/ResourceBundle$NoFallbackControl;->listDefault:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$NoFallbackControl;-><init>(Ljava/util/List;)V

    sput-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->NOFALLBACK_FORMAT_DEFAULT_CONTROL:Ljava/util/ResourceBundle$Control;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/ResourceBundle$Control;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->listClass:Ljava/util/List;

    sget-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->listClass:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->listClass:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ResourceBundle$Control;->format:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/ResourceBundle$Control;-><init>()V

    iput-object p1, p0, Ljava/util/ResourceBundle$Control;->format:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFallbackLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
