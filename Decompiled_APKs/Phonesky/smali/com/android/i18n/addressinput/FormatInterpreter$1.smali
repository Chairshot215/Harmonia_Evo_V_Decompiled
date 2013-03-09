.class Lcom/android/i18n/addressinput/FormatInterpreter$1;
.super Ljava/lang/Object;
.source "FormatInterpreter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/i18n/addressinput/FormatInterpreter;->overrideFieldOrder(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/i18n/addressinput/AddressField;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/i18n/addressinput/FormatInterpreter;

.field final synthetic val$fieldPriority:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/android/i18n/addressinput/FormatInterpreter;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/i18n/addressinput/FormatInterpreter$1;->this$0:Lcom/android/i18n/addressinput/FormatInterpreter;

    iput-object p2, p0, Lcom/android/i18n/addressinput/FormatInterpreter$1;->val$fieldPriority:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/i18n/addressinput/AddressField;Lcom/android/i18n/addressinput/AddressField;)I
    .locals 2
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/i18n/addressinput/FormatInterpreter$1;->val$fieldPriority:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/android/i18n/addressinput/FormatInterpreter$1;->val$fieldPriority:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    check-cast p1, Lcom/android/i18n/addressinput/AddressField;

    .end local p1
    check-cast p2, Lcom/android/i18n/addressinput/AddressField;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/addressinput/FormatInterpreter$1;->compare(Lcom/android/i18n/addressinput/AddressField;Lcom/android/i18n/addressinput/AddressField;)I

    move-result v0

    return v0
.end method
