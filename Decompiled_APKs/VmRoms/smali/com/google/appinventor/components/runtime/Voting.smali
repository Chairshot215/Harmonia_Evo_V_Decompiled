.class public Lcom/google/appinventor/components/runtime/Voting;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    designerHelpDescription = "<p>The Voting component enables users to vote on a question by communicating with a Web service to retrieve a ballot and later sending back users\' votes.</p>"
    iconName = "images/voting.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# static fields
.field private static final BALLOT_OPTIONS_PARAMETER:Ljava/lang/String; = "options"

.field private static final BALLOT_QUESTION_PARAMETER:Ljava/lang/String; = "question"

.field private static final ID_REQUESTED_PARAMETER:Ljava/lang/String; = "idRequested"

.field private static final IS_POLLING_PARAMETER:Ljava/lang/String; = "isPolling"

.field private static final LOG_TAG:Ljava/lang/String; = "Voting"

.field private static final REQUESTBALLOT_COMMAND:Ljava/lang/String; = "requestballot"

.field private static final SENDBALLOT_COMMAND:Ljava/lang/String; = "sendballot"

.field private static final USER_CHOICE_PARAMETER:Ljava/lang/String; = "userchoice"

.field private static final USER_ID_PARAMETER:Ljava/lang/String; = "userid"


# instance fields
.field private activityContext:Landroid/app/Activity;

.field private androidUIHandler:Landroid/os/Handler;

.field private ballotOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ballotOptionsString:Ljava/lang/String;

.field private ballotQuestion:Ljava/lang/String;

.field private idRequested:Ljava/lang/Boolean;

.field private isPolling:Ljava/lang/Boolean;

.field private serviceURL:Ljava/lang/String;

.field private theContainer:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private userChoice:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, "http://androvote.appspot.com"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->serviceURL:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->userId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->isPolling:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->idRequested:Ljava/lang/Boolean;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->ballotQuestion:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->ballotOptions:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->userChoice:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->androidUIHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting;->theContainer:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->activityContext:Landroid/app/Activity;

    const-string v0, "http://androvote.appspot.com"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->serviceURL:Ljava/lang/String;

    return-void
.end method

.method private JSONArrayToArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Voting;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Voting;->postRequestBallot()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Voting;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->androidUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/appinventor/components/runtime/Voting;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Voting;->postSendBallot(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Voting;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->isPolling:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/appinventor/components/runtime/Voting;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting;->isPolling:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$302(Lcom/google/appinventor/components/runtime/Voting;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting;->idRequested:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/appinventor/components/runtime/Voting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting;->ballotQuestion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/Voting;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->ballotOptionsString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/appinventor/components/runtime/Voting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting;->ballotOptionsString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/appinventor/components/runtime/Voting;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting;->ballotOptions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/Voting;Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Voting;->JSONArrayToArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/Voting;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->userChoice:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/Voting;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->userId:Ljava/lang/String;

    return-object v0
.end method

.method private postRequestBallot()V
    .locals 5

    new-instance v0, Lcom/google/appinventor/components/runtime/Voting$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Voting$2;-><init>(Lcom/google/appinventor/components/runtime/Voting;)V

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->getInstance()Lcom/google/appinventor/components/runtime/util/WebServiceUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Voting;->serviceURL:Ljava/lang/String;

    const-string v3, "requestballot"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->postCommandReturningObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method

.method private postSendBallot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/google/appinventor/components/runtime/Voting$4;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Voting$4;-><init>(Lcom/google/appinventor/components/runtime/Voting;)V

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->getInstance()Lcom/google/appinventor/components/runtime/util/WebServiceUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Voting;->serviceURL:Ljava/lang/String;

    const-string v3, "sendballot"

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/apache/http/NameValuePair;

    const/4 v5, 0x0

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "userchoice"

    invoke-direct {v6, v7, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "userid"

    invoke-direct {v6, v7, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->postCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method


# virtual methods
.method public BallotOptions()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The list of ballot options."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->ballotOptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public BallotQuestion()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The question to be voted on."
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->ballotQuestion:Ljava/lang/String;

    return-object v0
.end method

.method public GotBallot()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that a ballot was retrieved from the Web service and that the properties <code>BallotQuestion</code> and <code>BallotOptions</code> have been set.  This is always preceded by a call to the method <code>RequestBallot</code>."
    .end annotation

    const-string v0, "GotBallot"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotBallotConfirmation()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const-string v0, "GotBallotConfirmation"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public NoOpenPoll()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const-string v0, "NoOpenPoll"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RequestBallot()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a request for a ballot to the Web service specified by the property <code>ServiceURL</code>.  When the completes, one of the following events will be raised: <code>GotBallot</code>, <code>NoOpenPoll</code>, or <code>WebServiceError</code>."
    .end annotation

    new-instance v0, Lcom/google/appinventor/components/runtime/Voting$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Voting$1;-><init>(Lcom/google/appinventor/components/runtime/Voting;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public SendBallot()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a completed ballot to the Web service.  This should not be called until the properties <code>UserId</code> and <code>UserChoice</code> have been set by the application."
    .end annotation

    new-instance v0, Lcom/google/appinventor/components/runtime/Voting$3;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Voting$3;-><init>(Lcom/google/appinventor/components/runtime/Voting;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ServiceURL()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The URL of the Voting service"
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->serviceURL:Ljava/lang/String;

    return-object v0
.end method

.method public ServiceURL(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "http://androvote.appspot.com"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting;->serviceURL:Ljava/lang/String;

    return-void
.end method

.method public UserChoice()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The ballot choice to send to the server, which must be set before <code>SendBallot</code> is called.  This must be one of <code>BallotOptions</code>."
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->userChoice:Ljava/lang/String;

    return-object v0
.end method

.method public UserChoice(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting;->userChoice:Ljava/lang/String;

    return-void
.end method

.method public UserEmailAddress()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The email address associated with this device. This property has been deprecated and always returns the empty text value."
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public UserId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A text identifying the voter that is sent to the Voting server along with the vote.  This must be set before <code>SendBallot</code> is called."
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public UserId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting;->userId:Ljava/lang/String;

    return-void
.end method

.method public WebServiceError(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const-string v0, "WebServiceError"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
