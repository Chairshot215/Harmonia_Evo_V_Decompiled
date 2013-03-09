.class public Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;
.super Lcom/google/appinventor/components/runtime/Form;
.source "Screen1.yail"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/lists/FString;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/lists/FString;

.field static final Lit14:Lgnu/lists/FString;

.field static final Lit15:Lgnu/mapping/SimpleSymbol;

.field static final Lit16:Lgnu/lists/FString;

.field static final Lit17:Lgnu/lists/FString;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lgnu/lists/FString;

.field static final Lit2:Ljava/lang/Class;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit23:Lgnu/mapping/SimpleSymbol;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit26:Lgnu/mapping/SimpleSymbol;

.field static final Lit27:Lgnu/mapping/SimpleSymbol;

.field static final Lit28:Lgnu/mapping/SimpleSymbol;

.field static final Lit29:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit30:Lgnu/mapping/SimpleSymbol;

.field static final Lit31:Lgnu/mapping/SimpleSymbol;

.field static final Lit32:Lgnu/mapping/SimpleSymbol;

.field static final Lit33:Lgnu/mapping/SimpleSymbol;

.field static final Lit34:Lgnu/mapping/SimpleSymbol;

.field static final Lit35:Lgnu/mapping/SimpleSymbol;

.field static final Lit36:Lgnu/mapping/SimpleSymbol;

.field static final Lit37:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static Screen1:Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;

.field static final lambda$Fn1:Lgnu/expr/ModuleMethod;

.field static final lambda$Fn2:Lgnu/expr/ModuleMethod;

.field static final lambda$Fn3:Lgnu/expr/ModuleMethod;

.field static final lambda$Fn4:Lgnu/expr/ModuleMethod;

.field static final lambda$Fn5:Lgnu/expr/ModuleMethod;

.field static final lambda$Fn6:Lgnu/expr/ModuleMethod;

.field static final loc$$Stblock$Mnid$Mnindicator$St:Lgnu/mapping/Location;

.field static final loc$$Stclose$Mnbracket$St:Lgnu/mapping/Location;

.field static final loc$$Stfailure$St:Lgnu/mapping/Location;

.field static final loc$$Stopen$Mnbracket$St:Lgnu/mapping/Location;

.field static final loc$$Stresult$Mnindicator$St:Lgnu/mapping/Location;

.field static final loc$$Streturn$Mntag$Mnender$St:Lgnu/mapping/Location;


# instance fields
.field public $Stdebug$Mnform$St:Ljava/lang/Boolean;

.field public final $define:Lgnu/expr/ModuleMethod;

.field public Title:Lcom/google/appinventor/components/runtime/WebViewer;

.field public Web1:Lcom/google/appinventor/components/runtime/Web;

.field public WebViewer1:Lcom/google/appinventor/components/runtime/WebViewer;

.field public final add$Mnto$Mncomponents:Lgnu/expr/ModuleMethod;

.field public final add$Mnto$Mnevents:Lgnu/expr/ModuleMethod;

.field public final add$Mnto$Mnform$Mndo$Mnafter$Mncreation:Lgnu/expr/ModuleMethod;

.field public final add$Mnto$Mnform$Mnenvironment:Lgnu/expr/ModuleMethod;

.field public final add$Mnto$Mnglobal$Mnvar$Mnenvironment:Lgnu/expr/ModuleMethod;

.field public final add$Mnto$Mnglobal$Mnvars:Lgnu/expr/ModuleMethod;

.field public final android$Mnlog$Mnform:Lgnu/expr/ModuleMethod;

.field public components$Mnto$Mncreate:Lgnu/lists/LList;

.field public final dispatchEvent:Lgnu/expr/ModuleMethod;

.field public events$Mnto$Mnregister:Lgnu/lists/LList;

.field public form$Mndo$Mnafter$Mncreation:Lgnu/lists/LList;

.field public form$Mnenvironment:Lgnu/mapping/Environment;

.field public form$Mnname$Mnsymbol:Lgnu/mapping/Symbol;

.field public global$Mnvar$Mnenvironment:Lgnu/mapping/Environment;

.field public global$Mnvars$Mnto$Mncreate:Lgnu/lists/LList;

.field public final is$Mnbound$Mnin$Mnform$Mnenvironment:Lgnu/expr/ModuleMethod;

.field public final lookup$Mnhandler:Lgnu/expr/ModuleMethod;

.field public final lookup$Mnin$Mnform$Mnenvironment:Lgnu/expr/ModuleMethod;

.field public final process$Mnexception:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "*close-bracket*"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit37:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "*result-indicator*"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit36:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "*failure*"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit35:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "*return-tag-ender*"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit34:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "*block-id-indicator*"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit33:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "*open-bracket*"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit32:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "lookup-handler"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit31:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "dispatchEvent"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit30:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "process-exception"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit29:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "add-to-form-do-after-creation"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit28:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "add-to-global-vars"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit27:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "add-to-components"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit26:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "add-to-events"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "add-to-global-var-environment"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "is-bound-in-form-environment"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "lookup-in-form-environment"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "add-to-form-environment"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "android-log-form"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/lists/FString;

    const-string v1, "com.google.appinventor.components.runtime.Web"

    invoke-direct {v0, v1}, Lgnu/lists/FString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit19:Lgnu/lists/FString;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "Web1"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/lists/FString;

    const-string v1, "com.google.appinventor.components.runtime.Web"

    invoke-direct {v0, v1}, Lgnu/lists/FString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit17:Lgnu/lists/FString;

    new-instance v0, Lgnu/lists/FString;

    const-string v1, "com.google.appinventor.components.runtime.WebViewer"

    invoke-direct {v0, v1}, Lgnu/lists/FString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit16:Lgnu/lists/FString;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "WebViewer1"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/lists/FString;

    const-string v1, "com.google.appinventor.components.runtime.WebViewer"

    invoke-direct {v0, v1}, Lgnu/lists/FString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit14:Lgnu/lists/FString;

    new-instance v0, Lgnu/lists/FString;

    const-string v1, "com.google.appinventor.components.runtime.WebViewer"

    invoke-direct {v0, v1}, Lgnu/lists/FString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit13:Lgnu/lists/FString;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "HomeUrl"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/lists/FString;

    const-string v1, "com.google.appinventor.components.runtime.WebViewer"

    invoke-direct {v0, v1}, Lgnu/lists/FString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit11:Lgnu/lists/FString;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "Title"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "text"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "Icon"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "*the-null-value*"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "get"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "show"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "getMessage"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "makeText"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit3:Lgnu/mapping/SimpleSymbol;

    const-class v0, Landroid/widget/Toast;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit2:Ljava/lang/Class;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "repl"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "Screen1"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit32:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v2}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v0

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->loc$$Stopen$Mnbracket$St:Lgnu/mapping/Location;

    sget-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit33:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v2}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v0

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->loc$$Stblock$Mnid$Mnindicator$St:Lgnu/mapping/Location;

    sget-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit34:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v2}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v0

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->loc$$Streturn$Mntag$Mnender$St:Lgnu/mapping/Location;

    sget-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit35:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v2}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v0

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->loc$$Stfailure$St:Lgnu/mapping/Location;

    sget-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit36:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v2}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v0

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->loc$$Stresult$Mnindicator$St:Lgnu/mapping/Location;

    sget-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit37:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v2}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v0

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->loc$$Stclose$Mnbracket$St:Lgnu/mapping/Location;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const/16 v9, 0x4004

    const/16 v8, 0x1001

    const/16 v7, 0x2002

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    new-instance v0, Lgnu/expr/ModuleMethod;

    new-instance v1, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1$frame;

    invoke-direct {v1}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1$frame;-><init>()V

    iput-object p0, v1, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1$frame;->$main:Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;

    const/4 v2, 0x1

    sget-object v3, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit20:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->android$Mnlog$Mnform:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x2

    sget-object v3, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit21:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->add$Mnto$Mnform$Mnenvironment:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x3

    sget-object v3, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit22:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x2001

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->lookup$Mnin$Mnform$Mnenvironment:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x5

    sget-object v3, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit23:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->is$Mnbound$Mnin$Mnform$Mnenvironment:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x6

    sget-object v3, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit24:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->add$Mnto$Mnglobal$Mnvar$Mnenvironment:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x7

    sget-object v3, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit25:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->add$Mnto$Mnevents:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x8

    sget-object v3, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit26:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v9}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->add$Mnto$Mncomponents:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x9

    sget-object v3, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit27:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->add$Mnto$Mnglobal$Mnvars:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xa

    sget-object v3, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit28:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->add$Mnto$Mnform$Mndo$Mnafter$Mncreation:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xb

    sget-object v3, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit29:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->process$Mnexception:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xc

    sget-object v3, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit30:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v9}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->dispatchEvent:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xd

    sget-object v3, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit31:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->lookup$Mnhandler:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v6, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v2, "source-location"

    const-string v3, "/tmp/runtime6404997055479569743.scm:540"

    invoke-virtual {v0, v2, v3}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xf

    const-string v3, "$define"

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->$define:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v6, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v6, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v6, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->lambda$Fn4:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2, v6, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->lambda$Fn5:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2, v6, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->lambda$Fn6:Lgnu/expr/ModuleMethod;

    return-void
.end method

.method public static lambda1symbolAppend$V([Ljava/lang/Object;)Lgnu/mapping/SimpleSymbol;
    .locals 9
    .parameter "argsArray"

    .prologue
    const/4 v8, 0x1

    .line 10220
    const/4 v4, 0x0

    invoke-static {p0, v4}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v3

    .line 10221
    .local v3, symbols:Lgnu/lists/LList;
    sget-object v4, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    .line 10222
    sget-object v5, Lkawa/lib/strings;->string$Mnappend:Lgnu/expr/ModuleMethod;

    .line 10223
    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v3

    .end local p0
    :goto_0
    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v0, v7, :cond_0

    invoke-static {v6}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :try_start_0
    check-cast p0, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-static {p0}, Lkawa/lib/misc;->string$To$Symbol(Ljava/lang/CharSequence;)Lgnu/mapping/SimpleSymbol;

    move-result-object v4

    return-object v4

    :cond_0
    :try_start_1
    check-cast v0, Lgnu/lists/Pair;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .local v0, arg0:Lgnu/lists/Pair;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p0

    :try_start_2
    check-cast p0, Lgnu/mapping/Symbol;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-static {p0}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    .local v1, arg0:Ljava/lang/Object;
    .local v2, result:Lgnu/lists/Pair;
    move-object v6, v2

    move-object v0, v1

    .end local v1           #arg0:Ljava/lang/Object;
    .local v0, arg0:Ljava/lang/Object;
    goto :goto_0

    .end local v0           #arg0:Ljava/lang/Object;
    .end local v2           #result:Lgnu/lists/Pair;
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "arg0"

    const/4 v7, -0x2

    invoke-direct {v5, v4, v6, v7, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .local v0, arg0:Lgnu/lists/Pair;
    :catch_1
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "symbol->string"

    invoke-direct {v5, v4, v6, v8, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 10222
    .end local v0           #arg0:Lgnu/lists/Pair;
    :catch_2
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "string->symbol"

    invoke-direct {v5, v4, v6, v8, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5
.end method

.method static lambda2()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10253
    const/4 v0, 0x0

    return-object v0
.end method

.method static lambda3()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 8
    sget-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit8:Lgnu/mapping/SimpleSymbol;

    const-string v2, "icon.png"

    sget-object v3, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit9:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v1, v2, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit10:Lgnu/mapping/SimpleSymbol;

    const-string v2, "VmRoms.com"

    sget-object v3, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit9:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v1, v2, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static lambda4()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 12
    sget-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit10:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit12:Lgnu/mapping/SimpleSymbol;

    const-string v2, "http://www.vmroms.com/App/title.html"

    sget-object v3, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit9:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v1, v2, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static lambda5()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 12
    sget-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit10:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit12:Lgnu/mapping/SimpleSymbol;

    const-string v2, "http://www.vmroms.com/App/title.html"

    sget-object v3, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit9:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v1, v2, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static lambda6()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 15
    sget-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit15:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit12:Lgnu/mapping/SimpleSymbol;

    const-string v2, "http://www.vmroms.com/index.php?action=forum;wap2"

    sget-object v3, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit9:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v1, v2, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static lambda7()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 15
    sget-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit15:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit12:Lgnu/mapping/SimpleSymbol;

    const-string v2, "http://www.vmroms.com/index.php?action=forum;wap2"

    sget-object v3, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit9:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v1, v2, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public $define()V
    .locals 25

    .prologue
    .line 10157
    invoke-static {}, Lkawa/standard/Scheme;->getInstance()Lkawa/standard/Scheme;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    .line 10237
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10240
    :goto_0
    sput-object p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Screen1:Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;

    sget-object v21, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit0:Lgnu/mapping/SimpleSymbol;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->addToFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    .line 10245
    move-object/from16 v0, p0

    iget-object v0, v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->events$Mnto$Mnregister:Lgnu/lists/LList;

    move-object v14, v0

    .line 10161
    .local v14, events:Lgnu/lists/LList;
    move-object v5, v14

    :goto_1
    sget-object v21, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v5

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 10248
    :try_start_1
    sget-object v21, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit7:Lgnu/mapping/SimpleSymbol;

    sget-object v22, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->addToGlobalVars(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10259
    move-object/from16 v0, p0

    iget-object v0, v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->global$Mnvars$Mnto$Mncreate:Lgnu/lists/LList;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lkawa/lib/lists;->reverse(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object v20

    .line 10172
    .local v20, var$Mnval$Mnpairs:Lgnu/lists/LList;
    move-object/from16 v6, p0

    .line 10178
    .local v6, closureEnv:Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;
    move-object/from16 v5, v20

    :goto_2
    sget-object v21, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v5

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 10260
    move-object/from16 v0, p0

    iget-object v0, v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->form$Mndo$Mnafter$Mncreation:Lgnu/lists/LList;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lkawa/lib/lists;->reverse(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object v5

    :goto_3
    sget-object v21, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v5

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 10261
    move-object/from16 v0, p0

    iget-object v0, v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->components$Mnto$Mncreate:Lgnu/lists/LList;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lkawa/lib/lists;->reverse(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object v8

    .line 10181
    .local v8, component$Mndescriptors:Lgnu/lists/LList;
    move-object/from16 v6, p0

    .line 10182
    move-object v5, v8

    .end local v6           #closureEnv:Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;
    :goto_4
    sget-object v21, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v5

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 10210
    move-object v5, v8

    :goto_5
    sget-object v21, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v5

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 10217
    move-object v5, v8

    :goto_6
    sget-object v21, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;
    :try_end_1
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v5

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 10264
    .end local v8           #component$Mndescriptors:Lgnu/lists/LList;
    .end local v20           #var$Mnval$Mnpairs:Lgnu/lists/LList;
    :goto_7
    return-void

    .line 10237
    .end local v14           #events:Lgnu/lists/LList;
    :catch_0
    move-exception v15

    .line 10239
    .local v15, exception:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->androidLogForm(Ljava/lang/Object;)V

    .line 10240
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->processException(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 10161
    .end local v15           #exception:Ljava/lang/Exception;
    .restart local v14       #events:Lgnu/lists/LList;
    :cond_0
    :try_start_2
    check-cast v5, Lgnu/lists/Pair;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_a

    .local v5, arg0:Lgnu/lists/Pair;
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    .line 10165
    .local v13, event$Mninfo:Ljava/lang/Object;
    sget-object v21, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 10167
    move-object/from16 v0, v21

    move-object v1, v13

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-nez v21, :cond_1

    const/16 v21, 0x0

    :goto_8
    sget-object v22, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 10168
    move-object/from16 v0, v22

    move-object v1, v13

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    if-nez v22, :cond_2

    const/16 v22, 0x0

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->registerEventForDelegation(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    .local v5, arg0:Ljava/lang/Object;
    goto/16 :goto_1

    .line 10167
    .local v5, arg0:Lgnu/lists/Pair;
    :cond_1
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    goto :goto_8

    .line 10168
    :cond_2
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    goto :goto_9

    .line 10178
    .end local v5           #arg0:Lgnu/lists/Pair;
    .end local v13           #event$Mninfo:Ljava/lang/Object;
    .restart local v6       #closureEnv:Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;
    .restart local v20       #var$Mnval$Mnpairs:Lgnu/lists/LList;
    :cond_3
    :try_start_3
    check-cast v5, Lgnu/lists/Pair;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_3 .. :try_end_3} :catch_2

    .line 10259
    .restart local v5       #arg0:Lgnu/lists/Pair;
    :try_start_4
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v19

    .line 10175
    .local v19, var$Mnval:Ljava/lang/Object;
    sget-object v21, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 10176
    sget-object v21, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v17

    .line 10177
    .local v17, val$Mnthunk:Ljava/lang/Object;
    .local v18, var:Ljava/lang/Object;
    :try_start_5
    check-cast v18, Lgnu/mapping/Symbol;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_5 .. :try_end_5} :catch_2

    .end local v18           #var:Ljava/lang/Object;
    :try_start_6
    sget-object v21, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->addToGlobalVarEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    .local v5, arg0:Ljava/lang/Object;
    goto/16 :goto_2

    .line 10259
    .end local v5           #arg0:Ljava/lang/Object;
    .end local v17           #val$Mnthunk:Ljava/lang/Object;
    .end local v19           #var$Mnval:Ljava/lang/Object;
    :catch_1
    move-exception v21

    new-instance v22, Lgnu/mapping/WrongType;

    const-string v23, "arg0"

    const/16 v24, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move/from16 v3, v24

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v22
    :try_end_6
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_6 .. :try_end_6} :catch_2

    .line 10216
    .end local v6           #closureEnv:Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;
    .end local v20           #var$Mnval$Mnpairs:Lgnu/lists/LList;
    :catch_2
    move-exception v21

    move-object/from16 v15, v21

    .line 10264
    .local v15, exception:Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->processException(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 10177
    .end local v15           #exception:Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;
    .local v5, arg0:Lgnu/lists/Pair;
    .restart local v6       #closureEnv:Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;
    .restart local v17       #val$Mnthunk:Ljava/lang/Object;
    .restart local v18       #var:Ljava/lang/Object;
    .restart local v19       #var$Mnval:Ljava/lang/Object;
    .restart local v20       #var$Mnval$Mnpairs:Lgnu/lists/LList;
    :catch_3
    move-exception v21

    :try_start_7
    new-instance v22, Lgnu/mapping/WrongType;

    const-string v23, "add-to-global-var-environment"

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v22
    :try_end_7
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_7 .. :try_end_7} :catch_2

    .line 10260
    .end local v5           #arg0:Lgnu/lists/Pair;
    .end local v17           #val$Mnthunk:Ljava/lang/Object;
    .end local v18           #var:Ljava/lang/Object;
    .end local v19           #var$Mnval:Ljava/lang/Object;
    :cond_4
    :try_start_8
    check-cast v5, Lgnu/lists/Pair;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_8 .. :try_end_8} :catch_2

    .line 10248
    .restart local v5       #arg0:Lgnu/lists/Pair;
    :try_start_9
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lkawa/lib/misc;->force(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    .local v5, arg0:Ljava/lang/Object;
    goto/16 :goto_3

    .end local v5           #arg0:Ljava/lang/Object;
    :catch_4
    move-exception v21

    new-instance v22, Lgnu/mapping/WrongType;

    const-string v23, "arg0"

    const/16 v24, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move/from16 v3, v24

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v22
    :try_end_9
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_9 .. :try_end_9} :catch_2

    .line 10182
    .end local v6           #closureEnv:Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;
    .restart local v8       #component$Mndescriptors:Lgnu/lists/LList;
    :cond_5
    :try_start_a
    check-cast v5, Lgnu/lists/Pair;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_a .. :try_end_a} :catch_2

    .local v5, arg0:Lgnu/lists/Pair;
    :try_start_b
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    .line 10183
    .local v9, component$Mninfo:Ljava/lang/Object;
    sget-object v21, Lkawa/lib/lists;->caddr:Lgnu/expr/GenericProc;

    move-object/from16 v0, v21

    move-object v1, v9

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 10184
    sget-object v21, Lkawa/lib/lists;->cadddr:Lgnu/expr/GenericProc;

    move-object/from16 v0, v21

    move-object v1, v9

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10185
    sget-object v21, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    move-object/from16 v0, v21

    move-object v1, v9

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 10186
    sget-object v21, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object/from16 v0, v21

    move-object v1, v9

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_b .. :try_end_b} :catch_2

    move-result-object v6

    :try_start_c
    check-cast v6, Lgnu/mapping/Symbol;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_6
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_c .. :try_end_c} :catch_2

    :try_start_d
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->lookupInFormEnvironment(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v7

    .line 10190
    .local v7, component$Mncontainer:Ljava/lang/Object;
    .local v10, component$Mnname:Ljava/lang/Object;
    .local v12, component$Mntype:Ljava/lang/Object;
    sget-object v21, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    move-object/from16 v0, v21

    move-object v1, v12

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 10192
    .local v11, component$Mnobject:Ljava/lang/Object;
    sget-object v21, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_d .. :try_end_d} :catch_2

    .line 10195
    :try_start_e
    check-cast v10, Lgnu/mapping/Symbol;
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_e} :catch_7
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_e .. :try_end_e} :catch_2

    .end local v10           #component$Mnname:Ljava/lang/Object;
    :try_start_f
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->addToFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    .local v5, arg0:Ljava/lang/Object;
    goto/16 :goto_4

    .line 10182
    .end local v5           #arg0:Ljava/lang/Object;
    .end local v7           #component$Mncontainer:Ljava/lang/Object;
    .end local v9           #component$Mninfo:Ljava/lang/Object;
    .end local v11           #component$Mnobject:Ljava/lang/Object;
    .end local v12           #component$Mntype:Ljava/lang/Object;
    :catch_5
    move-exception v21

    new-instance v22, Lgnu/mapping/WrongType;

    const-string v23, "arg0"

    const/16 v24, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move/from16 v3, v24

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v22

    .line 10186
    .local v5, arg0:Lgnu/lists/Pair;
    .restart local v9       #component$Mninfo:Ljava/lang/Object;
    :catch_6
    move-exception v21

    new-instance v22, Lgnu/mapping/WrongType;

    const-string v23, "lookup-in-form-environment"

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move/from16 v3, v24

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v22

    .line 10195
    .restart local v7       #component$Mncontainer:Ljava/lang/Object;
    .restart local v10       #component$Mnname:Ljava/lang/Object;
    .restart local v11       #component$Mnobject:Ljava/lang/Object;
    .restart local v12       #component$Mntype:Ljava/lang/Object;
    :catch_7
    move-exception v21

    new-instance v22, Lgnu/mapping/WrongType;

    const-string v23, "add-to-form-environment"

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move/from16 v3, v24

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v22
    :try_end_f
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_f .. :try_end_f} :catch_2

    .line 10210
    .end local v5           #arg0:Lgnu/lists/Pair;
    .end local v7           #component$Mncontainer:Ljava/lang/Object;
    .end local v9           #component$Mninfo:Ljava/lang/Object;
    .end local v10           #component$Mnname:Ljava/lang/Object;
    .end local v11           #component$Mnobject:Ljava/lang/Object;
    .end local v12           #component$Mntype:Ljava/lang/Object;
    :cond_6
    :try_start_10
    check-cast v5, Lgnu/lists/Pair;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_10 .. :try_end_10} :catch_2

    .line 10182
    .restart local v5       #arg0:Lgnu/lists/Pair;
    :try_start_11
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    .line 10206
    .restart local v9       #component$Mninfo:Ljava/lang/Object;
    sget-object v21, Lkawa/lib/lists;->caddr:Lgnu/expr/GenericProc;

    move-object/from16 v0, v21

    move-object v1, v9

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10207
    sget-object v21, Lkawa/lib/lists;->cadddr:Lgnu/expr/GenericProc;

    move-object/from16 v0, v21

    move-object v1, v9

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 10209
    .local v16, init$Mnthunk:Ljava/lang/Object;
    sget-object v21, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_7

    sget-object v21, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    .local v5, arg0:Ljava/lang/Object;
    goto/16 :goto_5

    .line 10182
    .end local v5           #arg0:Ljava/lang/Object;
    .end local v9           #component$Mninfo:Ljava/lang/Object;
    .end local v16           #init$Mnthunk:Ljava/lang/Object;
    :catch_8
    move-exception v21

    new-instance v22, Lgnu/mapping/WrongType;

    const-string v23, "arg0"

    const/16 v24, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move/from16 v3, v24

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v22
    :try_end_11
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_11 .. :try_end_11} :catch_2

    .line 10217
    :cond_8
    :try_start_12
    check-cast v5, Lgnu/lists/Pair;
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_12 .. :try_end_12} :catch_2

    .line 10182
    .local v5, arg0:Lgnu/lists/Pair;
    :try_start_13
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    .line 10213
    .restart local v9       #component$Mninfo:Ljava/lang/Object;
    sget-object v21, Lkawa/lib/lists;->caddr:Lgnu/expr/GenericProc;

    move-object/from16 v0, v21

    move-object v1, v9

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 10214
    sget-object v21, Lkawa/lib/lists;->cadddr:Lgnu/expr/GenericProc;

    move-object/from16 v0, v21

    move-object v1, v9

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10216
    .restart local v10       #component$Mnname:Ljava/lang/Object;
    sget-object v21, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->callInitialize(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    .local v5, arg0:Ljava/lang/Object;
    goto/16 :goto_6

    .line 10182
    .end local v5           #arg0:Ljava/lang/Object;
    .end local v9           #component$Mninfo:Ljava/lang/Object;
    .end local v10           #component$Mnname:Ljava/lang/Object;
    :catch_9
    move-exception v21

    new-instance v22, Lgnu/mapping/WrongType;

    const-string v23, "arg0"

    const/16 v24, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move/from16 v3, v24

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v22
    :try_end_13
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_13 .. :try_end_13} :catch_2

    .line 10161
    .end local v8           #component$Mndescriptors:Lgnu/lists/LList;
    .end local v20           #var$Mnval$Mnpairs:Lgnu/lists/LList;
    :catch_a
    move-exception v21

    new-instance v22, Lgnu/mapping/WrongType;

    const-string v23, "arg0"

    const/16 v24, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move/from16 v3, v24

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v22
.end method

.method public addToComponents(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "container$Mnname"
    .parameter "component$Mntype"
    .parameter "component$Mnname"
    .parameter "init$Mnthunk"

    .prologue
    .line 10057
    invoke-static {p1, p2, p3, p4}, Lgnu/lists/LList;->list4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    iget-object v1, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->components$Mnto$Mncreate:Lgnu/lists/LList;

    invoke-static {v0, v1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    iput-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->components$Mnto$Mncreate:Lgnu/lists/LList;

    return-void
.end method

.method public addToEvents(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "component$Mnname"
    .parameter "event$Mnname"

    .prologue
    .line 10050
    invoke-static {p1, p2}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    iget-object v1, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->events$Mnto$Mnregister:Lgnu/lists/LList;

    invoke-static {v0, v1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    iput-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->events$Mnto$Mnregister:Lgnu/lists/LList;

    return-void
.end method

.method public addToFormDoAfterCreation(Ljava/lang/Object;)V
    .locals 1
    .parameter "thunk"

    .prologue
    .line 10076
    iget-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->form$Mndo$Mnafter$Mncreation:Lgnu/lists/LList;

    invoke-static {p1, v0}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    iput-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->form$Mndo$Mnafter$Mncreation:Lgnu/lists/LList;

    return-void
.end method

.method public addToFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V
    .locals 4
    .parameter "name"
    .parameter "object"

    .prologue
    const/4 v3, 0x0

    .line 10011
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Adding ~A to env ~A with value ~A"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->form$Mnenvironment:Lgnu/mapping/Environment;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v3, v0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->androidLogForm(Ljava/lang/Object;)V

    .line 10013
    iget-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->form$Mnenvironment:Lgnu/mapping/Environment;

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    return-void
.end method

.method public addToGlobalVarEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V
    .locals 4
    .parameter "name"
    .parameter "object"

    .prologue
    const/4 v3, 0x0

    .line 10029
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Adding ~A to env ~A with value ~A"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->global$Mnvar$Mnenvironment:Lgnu/mapping/Environment;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v3, v0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->androidLogForm(Ljava/lang/Object;)V

    .line 10031
    iget-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->global$Mnvar$Mnenvironment:Lgnu/mapping/Environment;

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    return-void
.end method

.method public addToGlobalVars(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "var"
    .parameter "val$Mnthunk"

    .prologue
    .line 10066
    invoke-static {p1, p2}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    iget-object v1, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->global$Mnvars$Mnto$Mncreate:Lgnu/lists/LList;

    invoke-static {v0, v1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    iput-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->global$Mnvars$Mnto$Mncreate:Lgnu/lists/LList;

    return-void
.end method

.method public androidLogForm(Ljava/lang/Object;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 10002
    return-void
.end method

.method public dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 6
    .parameter "componentObject"
    .parameter "registeredComponentName"
    .parameter "eventName"
    .parameter "args"

    .prologue
    const/4 v5, 0x0

    .line 10113
    invoke-static {p2}, Lkawa/lib/misc;->string$To$Symbol(Ljava/lang/CharSequence;)Lgnu/mapping/SimpleSymbol;

    move-result-object v2

    .line 10123
    .local v2, registeredObject:Lgnu/mapping/SimpleSymbol;
    invoke-virtual {p0, v2}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->isBoundInFormEnvironment(Lgnu/mapping/Symbol;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10124
    invoke-virtual {p0, v2}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->lookupInFormEnvironment(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 10125
    invoke-virtual {p0, p2, p3}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->lookupHandler(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 10132
    .local v1, handler:Ljava/lang/Object;
    :try_start_0
    sget-object v3, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    const/4 v4, 0x0

    invoke-static {p4, v4}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    .line 10143
    .end local v1           #handler:Ljava/lang/Object;
    :goto_0
    return v3

    .line 10132
    .restart local v1       #handler:Ljava/lang/Object;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 10137
    .local v0, exception:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->androidLogForm(Ljava/lang/Object;)V

    .line 10139
    invoke-virtual {p0, v0}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->processException(Ljava/lang/Object;)V

    move v3, v5

    goto :goto_0

    .end local v0           #exception:Ljava/lang/Throwable;
    .end local v1           #handler:Ljava/lang/Object;
    :cond_0
    move v3, v5

    goto :goto_0

    .line 10143
    :cond_1
    invoke-static {p0, p2, p3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->unregisterEventForDelegation(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v5

    goto :goto_0
.end method

.method public isBoundInFormEnvironment(Lgnu/mapping/Symbol;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 10021
    iget-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->form$Mnenvironment:Lgnu/mapping/Environment;

    invoke-virtual {v0, p1}, Lgnu/mapping/Environment;->isBound(Lgnu/mapping/Symbol;)Z

    move-result v0

    return v0
.end method

.method public lookupHandler(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "componentName"
    .parameter "eventName"

    .prologue
    const/4 v1, 0x0

    .line 10149
    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    if-nez p2, :cond_1

    :goto_1
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->makeFullEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkawa/lib/misc;->string$To$Symbol(Ljava/lang/CharSequence;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    invoke-virtual {p0, v0}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->lookupInFormEnvironment(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public lookupInFormEnvironment(Lgnu/mapping/Symbol;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->lookupInFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lookupInFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "name"
    .parameter "default$Mnvalue"

    .prologue
    .line 10015
    iget-object v1, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->form$Mnenvironment:Lgnu/mapping/Environment;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v0, v1, 0x1

    .local v0, x:Z
    if-eqz v0, :cond_2

    iget-object v1, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->form$Mnenvironment:Lgnu/mapping/Environment;

    invoke-virtual {v1, p1}, Lgnu/mapping/Environment;->isBound(Lgnu/mapping/Symbol;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10018
    :cond_0
    iget-object v1, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->form$Mnenvironment:Lgnu/mapping/Environment;

    invoke-virtual {v1, p1}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v1

    .line 10016
    :goto_1
    return-object v1

    .line 10015
    .end local v0           #x:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .restart local v0       #x:Z
    :cond_2
    if-nez v0, :cond_0

    :cond_3
    move-object v1, p2

    .line 10016
    goto :goto_1
.end method

.method public processException(Ljava/lang/Object;)V
    .locals 13
    .parameter "ex"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x5

    const/16 v8, 0x21

    .line 10087
    sget-object v0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit1:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {p0, v0}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->lookupInFormEnvironment(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1

    .line 10090
    invoke-virtual {p0}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->toastAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10091
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v1, Lgnu/kawa/functions/GetNamedPart;->getNamedPart:Lgnu/kawa/functions/GetNamedPart;

    sget-object v2, Lgnu/kawa/reflect/Invoke;->invokeStatic:Lgnu/kawa/reflect/Invoke;

    new-array v3, v9, [Ljava/lang/Object;

    sget-object v4, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit2:Ljava/lang/Class;

    aput-object v4, v3, v10

    sget-object v4, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit3:Lgnu/mapping/SimpleSymbol;

    aput-object v4, v3, v11

    aput-object p0, v3, v12

    const/4 v4, 0x3

    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v6, Lgnu/kawa/functions/GetNamedPart;->getNamedPart:Lgnu/kawa/functions/GetNamedPart;

    sget-object v7, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit4:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v6, p1, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10093
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 10094
    sget-object v2, Lgnu/kawa/functions/GetNamedPart;->getNamedPart:Lgnu/kawa/functions/GetNamedPart;

    sget-object v3, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->loc$$Stopen$Mnbracket$St:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v3}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    sget-object v4, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v10

    const-string v1, "Problem"

    aput-object v1, v0, v11

    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 10096
    sget-object v2, Lgnu/kawa/functions/GetNamedPart;->getNamedPart:Lgnu/kawa/functions/GetNamedPart;

    sget-object v3, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->loc$$Stblock$Mnid$Mnindicator$St:Lgnu/mapping/Location;

    :try_start_1
    invoke-virtual {v3}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_1
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    sget-object v4, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v12

    const/4 v1, 0x3

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 10098
    sget-object v3, Lgnu/kawa/functions/GetNamedPart;->getNamedPart:Lgnu/kawa/functions/GetNamedPart;

    sget-object v4, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->loc$$Streturn$Mntag$Mnender$St:Lgnu/mapping/Location;

    :try_start_2
    invoke-virtual {v4}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_2
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    sget-object v5, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 10099
    sget-object v2, Lgnu/kawa/functions/GetNamedPart;->getNamedPart:Lgnu/kawa/functions/GetNamedPart;

    sget-object v3, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->loc$$Stfailure$St:Lgnu/mapping/Location;

    :try_start_3
    invoke-virtual {v3}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_3
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v3

    sget-object v4, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 10100
    sget-object v3, Lgnu/kawa/functions/GetNamedPart;->getNamedPart:Lgnu/kawa/functions/GetNamedPart;

    sget-object v4, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->loc$$Stresult$Mnindicator$St:Lgnu/mapping/Location;

    :try_start_4
    invoke-virtual {v4}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_4
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v4

    sget-object v5, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 10101
    sget-object v3, Lgnu/kawa/functions/GetNamedPart;->getNamedPart:Lgnu/kawa/functions/GetNamedPart;

    sget-object v4, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit4:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v3, p1, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 10102
    sget-object v3, Lgnu/kawa/functions/GetNamedPart;->getNamedPart:Lgnu/kawa/functions/GetNamedPart;

    sget-object v4, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->loc$$Stclose$Mnbracket$St:Lgnu/mapping/Location;

    :try_start_5
    invoke-virtual {v4}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_5
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v4

    sget-object v5, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v0

    invoke-static {v0}, Lkawa/lib/ports;->display(Ljava/lang/Object;)V

    .line 10103
    invoke-static {}, Lkawa/lib/ports;->forceOutput()V

    .line 10109
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 10106
    .restart local p1
    :cond_1
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 10108
    sget-object v1, Lgnu/kawa/functions/GetNamedPart;->getNamedPart:Lgnu/kawa/functions/GetNamedPart;

    sget-object v2, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit4:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v1, p1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    instance-of v1, p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    if-eqz v1, :cond_3

    .line 10109
    check-cast p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    .end local p1
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;->getErrorType()Ljava/lang/String;

    move-result-object v1

    :goto_2
    const-string v2, "End Application"

    invoke-static {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/RuntimeErrorAlert;->alert(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10108
    .restart local p1
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 10109
    :cond_3
    const-string v1, "Runtime Error"

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "/tmp/runtime6404997055479569743.scm"

    const/16 v2, 0x17d

    invoke-virtual {v0, v1, v2, v8}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "/tmp/runtime6404997055479569743.scm"

    const/16 v2, 0x17f

    invoke-virtual {v0, v1, v2, v8}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v0

    :catch_2
    move-exception v0

    const-string v1, "/tmp/runtime6404997055479569743.scm"

    const/16 v2, 0x181

    invoke-virtual {v0, v1, v2, v8}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v0

    :catch_3
    move-exception v0

    const-string v1, "/tmp/runtime6404997055479569743.scm"

    const/16 v2, 0x182

    invoke-virtual {v0, v1, v2, v8}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v0

    :catch_4
    move-exception v0

    const-string v1, "/tmp/runtime6404997055479569743.scm"

    const/16 v2, 0x183

    invoke-virtual {v0, v1, v2, v8}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v0

    :catch_5
    move-exception v0

    const-string v1, "/tmp/runtime6404997055479569743.scm"

    const/16 v2, 0x185

    invoke-virtual {v0, v1, v2, v8}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v0
.end method

.method public run()V
    .locals 3

    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    iget-object v1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    sget-object v2, Lgnu/lists/VoidConsumer;->instance:Lgnu/lists/VoidConsumer;

    iput-object v2, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    :try_start_0
    invoke-virtual {p0, v0}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->run(Lgnu/mapping/CallContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2, v1}, Lgnu/expr/ModuleBody;->runCleanup(Lgnu/mapping/CallContext;Ljava/lang/Throwable;Lgnu/lists/Consumer;)V

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 7
    .parameter "$ctx"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .local v0, $result:Lgnu/lists/Consumer;
    const-string v1, "com.google.youngandroid.runtime"

    invoke-static {v1}, Lkawa/standard/require;->find(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    check-cast v1, Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 10000
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->$Stdebug$Mnform$St:Ljava/lang/Boolean;

    .line 10002
    sget-object v1, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit0:Lgnu/mapping/SimpleSymbol;

    invoke-static {v1}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgnu/mapping/Environment;->make(Ljava/lang/String;)Lgnu/mapping/SimpleEnvironment;

    move-result-object v1

    iput-object v1, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->form$Mnenvironment:Lgnu/mapping/Environment;

    .line 10011
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit0:Lgnu/mapping/SimpleSymbol;

    invoke-static {v3}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "-global-vars"

    aput-object v2, v1, v6

    invoke-static {v1}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v5

    :goto_0
    invoke-static {v1}, Lgnu/mapping/Environment;->make(Ljava/lang/String;)Lgnu/mapping/SimpleEnvironment;

    move-result-object v1

    iput-object v1, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->global$Mnvar$Mnenvironment:Lgnu/mapping/Environment;

    .line 10029
    sput-object v5, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Screen1:Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;

    sget-object v1, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit0:Lgnu/mapping/SimpleSymbol;

    iput-object v1, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->form$Mnname$Mnsymbol:Lgnu/mapping/Symbol;

    .line 10041
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    iput-object v1, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->events$Mnto$Mnregister:Lgnu/lists/LList;

    .line 10046
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    iput-object v1, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->components$Mnto$Mncreate:Lgnu/lists/LList;

    .line 10050
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    iput-object v1, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->global$Mnvars$Mnto$Mncreate:Lgnu/lists/LList;

    .line 10066
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    iput-object v1, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->form$Mndo$Mnafter$Mncreation:Lgnu/lists/LList;

    .line 10076
    sget-object v1, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit1:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->addToFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    .line 10087
    const-string v1, "com.google.youngandroid.runtime"

    invoke-static {v1}, Lkawa/standard/require;->find(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :try_start_1
    check-cast v1, Ljava/lang/Runnable;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    sget-object v1, Lcom/google/youngandroid/runtime;->$Stthis$Mnis$Mnthe$Mnrepl$St:Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_1

    .line 8
    sget-object v1, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit8:Lgnu/mapping/SimpleSymbol;

    const-string v3, "icon.png"

    sget-object v4, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit9:Lgnu/mapping/SimpleSymbol;

    invoke-static {v1, v2, v3, v4}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v1, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit10:Lgnu/mapping/SimpleSymbol;

    const-string v3, "VmRoms.com"

    sget-object v4, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit9:Lgnu/mapping/SimpleSymbol;

    invoke-static {v1, v2, v3, v4}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 12
    :goto_1
    iput-object v5, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Title:Lcom/google/appinventor/components/runtime/WebViewer;

    sget-object v1, Lcom/google/youngandroid/runtime;->$Stthis$Mnis$Mnthe$Mnrepl$St:Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_2

    sget-object v1, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit11:Lgnu/lists/FString;

    sget-object v3, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit10:Lgnu/mapping/SimpleSymbol;

    sget-object v4, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    invoke-static {v1, v2, v3, v4}, Lcom/google/youngandroid/runtime;->addComponentWithinRepl(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 15
    :goto_2
    iput-object v5, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->WebViewer1:Lcom/google/appinventor/components/runtime/WebViewer;

    sget-object v1, Lcom/google/youngandroid/runtime;->$Stthis$Mnis$Mnthe$Mnrepl$St:Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_3

    sget-object v1, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit14:Lgnu/lists/FString;

    sget-object v3, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit15:Lgnu/mapping/SimpleSymbol;

    sget-object v4, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->lambda$Fn5:Lgnu/expr/ModuleMethod;

    invoke-static {v1, v2, v3, v4}, Lcom/google/youngandroid/runtime;->addComponentWithinRepl(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 18
    :goto_3
    iput-object v5, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Web1:Lcom/google/appinventor/components/runtime/Web;

    sget-object v1, Lcom/google/youngandroid/runtime;->$Stthis$Mnis$Mnthe$Mnrepl$St:Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_4

    sget-object v1, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit17:Lgnu/lists/FString;

    sget-object v3, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit18:Lgnu/mapping/SimpleSymbol;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2, v3, v4}, Lcom/google/youngandroid/runtime;->addComponentWithinRepl(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 19
    :goto_4
    invoke-static {}, Lcom/google/youngandroid/runtime;->initRuntime()V

    return-void

    .line 10011
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 9
    :cond_1
    new-instance v1, Lkawa/lang/Promise;

    sget-object v2, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    invoke-direct {v1, v2}, Lkawa/lang/Promise;-><init>(Lgnu/mapping/Procedure;)V

    invoke-virtual {p0, v1}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->addToFormDoAfterCreation(Ljava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_2
    sget-object v1, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit13:Lgnu/lists/FString;

    sget-object v3, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit10:Lgnu/mapping/SimpleSymbol;

    sget-object v4, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->lambda$Fn4:Lgnu/expr/ModuleMethod;

    invoke-virtual {p0, v1, v2, v3, v4}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->addToComponents(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 15
    :cond_3
    sget-object v1, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit16:Lgnu/lists/FString;

    sget-object v3, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit15:Lgnu/mapping/SimpleSymbol;

    sget-object v4, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->lambda$Fn6:Lgnu/expr/ModuleMethod;

    invoke-virtual {p0, v1, v2, v3, v4}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->addToComponents(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 18
    :cond_4
    sget-object v1, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit19:Lgnu/lists/FString;

    sget-object v3, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->Lit18:Lgnu/mapping/SimpleSymbol;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2, v3, v4}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->addToComponents(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 19
    :catch_0
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "java.lang.Runnable.run()"

    invoke-direct {v3, v2, v4, v6, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 6
    :catch_1
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "java.lang.Runnable.run()"

    invoke-direct {v3, v2, v4, v6, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method
