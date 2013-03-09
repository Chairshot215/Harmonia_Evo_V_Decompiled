.class public Lcom/google/appinventor/components/runtime/TextToSpeech;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MISC:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component for using TextToSpeech to speak a message"
    iconName = "images/textToSpeech.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextToSpeech"

.field private static final iso3CountryToLocaleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private static final iso3LanguageToLocaleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private country:Ljava/lang/String;

.field private iso2Country:Ljava/lang/String;

.field private iso2Language:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private result:Z

.field private final tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3LanguageToLocaleMap:Ljava/util/Map;

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3CountryToLocaleMap:Ljava/util/Map;

    invoke-static {}, Lcom/google/appinventor/components/runtime/TextToSpeech;->initLocaleMaps()V

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->result:Z

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TextToSpeech;->Language(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TextToSpeech;->Country(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "TextToSpeech"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_1

    const-string v3, "external"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TTS library."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/google/appinventor/components/runtime/TextToSpeech$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/TextToSpeech$1;-><init>(Lcom/google/appinventor/components/runtime/TextToSpeech;)V

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;

    invoke-direct {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;)V

    :goto_2
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->setVolumeControlStream(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const-string v3, "internal"

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;-><init>(Landroid/app/Activity;Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;)V

    goto :goto_2
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/TextToSpeech;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->result:Z

    return p1
.end method

.method private static initLocaleMaps()V
    .locals 6

    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    :try_start_0
    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    sget-object v5, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3CountryToLocaleMap:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    sget-object v5, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3LanguageToLocaleMap:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private static iso3CountryToLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 2

    sget-object v0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3CountryToLocaleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3CountryToLocaleMap:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Locale;

    move-object v0, p0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static iso3LanguageToLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 2

    sget-object v0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3LanguageToLocaleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3LanguageToLocaleMap:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Locale;

    move-object v0, p0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public AfterSpeaking(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const-string v0, "AfterSpeaking"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public BeforeSpeaking()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const-string v0, "BeforeSpeaking"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Country()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->country:Ljava/lang/String;

    return-object v0
.end method

.method public Country(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->country:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso2Country:Ljava/lang/String;

    return-void

    :pswitch_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3CountryToLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->country:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->country:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Language()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->language:Ljava/lang/String;

    return-object v0
.end method

.method public Language(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->language:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso2Language:Ljava/lang/String;

    return-void

    :pswitch_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3LanguageToLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->language:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->language:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Result()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->result:Z

    return v0
.end method

.method public Speak(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TextToSpeech;->BeforeSpeaking()V

    new-instance v0, Ljava/util/Locale;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso2Language:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso2Country:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v1, p1, v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->speak(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->onStop()V

    return-void
.end method
